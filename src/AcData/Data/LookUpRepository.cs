using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AcData.Domain;
using Dapper;
using Microsoft.Extensions.Configuration;
using Npgsql;

namespace AcData.Data
{
    internal class LookUpRepository : ILookUpRepository
    {
        private readonly IConfiguration _configuration;

        public LookUpRepository(IConfiguration configuration)
        {
            _configuration = configuration;
        }

        public async Task<List<Hemisphere>> GetHemispheres()
        {
            await using var connection = new NpgsqlConnection(_configuration.GetConnectionString(DbConstants.AcTrackerDbName));
            connection.Open();

            var results = await connection.QueryAsync<Hemisphere>("select * from Hemisphere").ConfigureAwait(false);

            return results.ToList();
        }

        public async Task<List<CalendarMonth>> GetCalendarMonths()
        {
            await using var connection = new NpgsqlConnection(_configuration.GetConnectionString(DbConstants.AcTrackerDbName));
            connection.Open();

            var results = await connection.QueryAsync<CalendarMonth>("select * from CalendarMonth").ConfigureAwait(false);

            return results.ToList();
        }

        public async Task<List<MapLocation>> GetMapLocations()
        {
            await using var connection = new NpgsqlConnection(_configuration.GetConnectionString(DbConstants.AcTrackerDbName));
            connection.Open();

            var results = await connection.QueryAsync<MapLocation>("select * from MapLocation").ConfigureAwait(false);

            return results.ToList();
        }

        public async Task<List<TimeOfDay>> GetTimeOfDay()
        {
            await using var connection = new NpgsqlConnection(_configuration.GetConnectionString(DbConstants.AcTrackerDbName));
            connection.Open();

            var results = await connection.QueryAsync<TimeOfDay>("select * from TimeOfDay").ConfigureAwait(false);

            return results.ToList();
        }

        public async Task<List<Shadow>> GetShadows()
        {
            await using var connection = new NpgsqlConnection(_configuration.GetConnectionString(DbConstants.AcTrackerDbName));
            connection.Open();

            var results = await connection.QueryAsync<Shadow>("select * from Shadow").ConfigureAwait(false);

            return results.ToList();
        }
    }
}
