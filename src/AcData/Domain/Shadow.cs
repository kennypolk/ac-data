using Newtonsoft.Json;

namespace AcData.Domain
{
    public class Shadow
    {
        [JsonProperty("Id")]
        public int ShadowId { get; set; }
        public string Value { get; set; }
    }
}
