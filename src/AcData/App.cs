using System.Threading.Tasks;
using AcData.Application;

namespace AcData
{
    internal sealed class App : IApp
    {
        private readonly IJsonService _jsonService;

        public App(IJsonService jsonService)
        {
            _jsonService = jsonService;
        }

        public async Task Run(Options options)
        {
            await _jsonService.ExportJsonData(options.Version, options.OutputPath, options.DryRun).ConfigureAwait(false);
        }
    }
}
