using System.Collections.Generic;
using System.Threading.Tasks;

namespace AcData.Domain
{
    public interface ILookUpRepository
    {
        Task<List<Hemisphere>> GetHemispheres();
        Task<List<CalendarMonth>> GetCalendarMonths();
        Task<List<MapLocation>> GetMapLocations();
        Task<List<TimeOfDay>> GetTimeOfDay();
        Task<List<Shadow>> GetShadows();
    }
}
