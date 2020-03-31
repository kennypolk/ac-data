using System.Collections.Generic;
using AcData.Domain;
using Newtonsoft.Json;

namespace AcData.Application
{
    public class Fish
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int Price { get; set; }
        public Shadow Shadow { get; set; }
        [JsonProperty("location")] 
        public MapLocation MapLocation { get; set; }
        public List<TimeOfDay> TimeOfDay { get; set; }
        public List<Availability> Availability { get; set; }
    }
}
