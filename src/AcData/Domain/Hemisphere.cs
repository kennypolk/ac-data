using Newtonsoft.Json;

namespace AcData.Domain
{
    public class Hemisphere
    {
        [JsonProperty("Id")]
        public int HemisphereId { get; set; }
        public string Value { get; set; }
    }
}
