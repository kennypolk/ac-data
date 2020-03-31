using Newtonsoft.Json;

namespace AcData.Domain
{
    public class MapLocation
    {
        [JsonProperty("Id")]
        public int LocationId { get; set; }
        public string Value { get; set; }
    }
}
