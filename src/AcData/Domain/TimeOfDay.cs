using Newtonsoft.Json;

namespace AcData.Domain
{
    public class TimeOfDay
    {
        [JsonProperty("Id")]
        public int TimeOfDayId { get; set; }
        public string Value { get; set; }
        public int StartHour { get; set; }
        public int EndHour { get; set; }
    }
}
