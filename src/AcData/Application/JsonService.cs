using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using AcData.Domain;
using Newtonsoft.Json;
using Newtonsoft.Json.Serialization;

namespace AcData.Application
{
    internal class JsonService : IJsonService
    {
        private readonly IFishRepository _fishRepository;
        private readonly ILookUpRepository _lookUpRepository;
        private List<CalendarMonth> _calendarMonths;
        private List<Hemisphere> _hemispheres;
        private List<TimeOfDay> _timeOfDay;

        public JsonService(IFishRepository fishRepository, ILookUpRepository lookUpRepository)
        {
            _fishRepository = fishRepository;
            _lookUpRepository = lookUpRepository;
        }

        public async Task ExportJsonData(string version, string outputPath, bool dryRun)
        {
            var allDomainFish = await _fishRepository.GetFish().ConfigureAwait(false);
            var fishSeasonality = await _fishRepository.GetFishSeasonality().ConfigureAwait(false);
            var fishTiming = await _fishRepository.GetFishTiming().ConfigureAwait(false);
            _hemispheres = await _lookUpRepository.GetHemispheres().ConfigureAwait(false);
            _calendarMonths = await _lookUpRepository.GetCalendarMonths().ConfigureAwait(false);
            var mapLocations = await _lookUpRepository.GetMapLocations().ConfigureAwait(false);
            var shadows = await _lookUpRepository.GetShadows().ConfigureAwait(false);
            _timeOfDay = await _lookUpRepository.GetTimeOfDay().ConfigureAwait(false);

            var fishCombinedData = new List<Fish>();
            foreach (var domainFish in allDomainFish)
            {
                fishCombinedData.Add(new Fish
                {
                    Id = domainFish.FishId,
                    Name = domainFish.Name,
                    Price = domainFish.Price,
                    MapLocation = mapLocations.FirstOrDefault(x => x.LocationId == domainFish.LocationId),
                    Shadow = shadows.FirstOrDefault(x => x.ShadowId == domainFish.ShadowId),
                    TimeOfDay = GenerateTimings(domainFish.FishId, fishTiming),
                    Availability = GenerateAvailability(domainFish.FishId, fishSeasonality)
                });
            }

            var outputObject = new
            {
                Hemispheres = _hemispheres,
                Months = _calendarMonths,
                Locations = mapLocations,
                Shadows = shadows,
                TimeOfDay = _timeOfDay,
                Fish = fishCombinedData
            };

            var jsonData = JsonConvert.SerializeObject(outputObject, new JsonSerializerSettings() { ContractResolver = new CamelCasePropertyNamesContractResolver() });
            var formattedJson = JsonConvert.SerializeObject(outputObject, Formatting.Indented, new JsonSerializerSettings() { ContractResolver = new CamelCasePropertyNamesContractResolver() });

            if (dryRun)
            {
                Console.WriteLine(formattedJson);
            }
            else
            {
                if (!Directory.Exists(outputPath))
                {
                    Console.WriteLine("Output path does not exist");
                    return;
                }

                var indentedFilePath = Path.Combine(outputPath, $"acdata-{version}.json");
                var minFilePath = Path.Combine(outputPath, $"acdata-{version}.min.json");

                await File.WriteAllTextAsync(indentedFilePath, formattedJson).ConfigureAwait(false);
                await File.WriteAllTextAsync(minFilePath, jsonData).ConfigureAwait(false);
            }
        }

        private List<TimeOfDay> GenerateTimings(int fishId, List<FishTiming> fishTiming)
        {
            var timings = fishTiming.Where(x => x.FishId == fishId);

            return _timeOfDay.Where(x => timings.Select(y => y.TimeOfDayId).Contains(x.TimeOfDayId)).ToList();
        }

        private Dictionary<int, List<CalendarMonth>> GenerateAvailability(int fishId, List<FishSeasonality> fishSeasonality)
        {
            var seasonality = fishSeasonality.Where(x => x.FishId == fishId).GroupBy(x => x.HemisphereId).Select(y => new { HemisphereId = y.Key, Months = y.Select(x => x.MonthId).ToList() });

            return seasonality.ToDictionary(item => item.HemisphereId, item => _calendarMonths.Where(x => item.Months.Contains(x.CalendarMonthId)).ToList());
        }
    }
}
