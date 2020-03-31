using System.Threading.Tasks;

namespace AcData.Application
{
    public interface IJsonService
    {
        Task ExportJsonData(string version, string outputPath, bool dryRun);
    }
}
