using Newtonsoft.Json;

namespace AcData.Domain
{
    public class CalendarMonth
    {
        [JsonProperty("Id")]
        public int CalendarMonthId { get; set; }
        public string Value { get; set; }
    }
}
