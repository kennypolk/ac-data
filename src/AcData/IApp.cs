using System.Threading.Tasks;

namespace AcData
{
    public interface IApp
    {
        Task Run(Options options);
    }
}
