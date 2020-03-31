using System.Collections.Generic;
using AcData.Domain;

namespace AcData.Application
{
    public class Availability
    {
        public Hemisphere Hemisphere { get; set; }
        public List<CalendarMonth> Months { get; set; }
    }
}
