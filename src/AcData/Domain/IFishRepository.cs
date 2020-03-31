using System.Collections.Generic;
using System.Threading.Tasks;

namespace AcData.Domain
{
    public interface IFishRepository
    {
        Task<List<Fish>> GetFish();
        Task<List<FishSeasonality>> GetFishSeasonality();
        Task<List<FishTiming>> GetFishTiming();
    }
}
