using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AcData.Domain;
using Dapper;
using Microsoft.Extensions.Configuration;
using Npgsql;

namespace AcData.Data 
{
    public class FishRepository : IFishRepository
    {
        private readonly IConfiguration _configuration;

        public FishRepository(IConfiguration configuration)
        {
            this._configuration = configuration;
        }

        public async Task<List<Fish>> GetFish()
        {
            await using var connection = new NpgsqlConnection(_configuration.GetConnectionString(DbConstants.AcTrackerDbName));
            connection.Open();

            var results = await connection.QueryAsync<Fish>("select * from fish").ConfigureAwait(false);

            return results.ToList();
        }

        public async Task<List<FishSeasonality>> GetFishSeasonality()
        {
            await using var connection = new NpgsqlConnection(_configuration.GetConnectionString(DbConstants.AcTrackerDbName));
            connection.Open();

            var results = await connection.QueryAsync<FishSeasonality>("select * from FishSeasonality").ConfigureAwait(false);

            return results.ToList();
        }

        public async Task<List<FishTiming>> GetFishTiming()
        {
            await using var connection = new NpgsqlConnection(_configuration.GetConnectionString(DbConstants.AcTrackerDbName));
            connection.Open();

            var results = await connection.QueryAsync<FishTiming>("select * from FishTiming").ConfigureAwait(false);

            return results.ToList();
        }
    }
}