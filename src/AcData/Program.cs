using System.IO;
using System.Reflection;
using AcData.Application;
using AcData.Data;
using AcData.Domain;
using CommandLine;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace AcData
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var services = ConfigureServices();

            var serviceProvider = services.BuildServiceProvider();

            var app = serviceProvider.GetService<IApp>();

            Parser.Default.ParseArguments<Options>(args).WithParsed(options =>
            {
                app.Run(options).Wait();
            });
        }

        private static IServiceCollection ConfigureServices()
        {
            var services = new ServiceCollection();

            var config = LoadConfiguration();
            services.AddSingleton(config);

            services.AddTransient<IApp, App>();
            services.AddTransient<IFishRepository, FishRepository>();
            services.AddTransient<ILookUpRepository, LookUpRepository>();
            services.AddTransient<IJsonService, JsonService>();

            return services;
        }

        private static IConfiguration LoadConfiguration()
        {
            var appDirectory = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location);

            var builder = new ConfigurationBuilder()
                .SetBasePath(appDirectory)
                .AddJsonFile("appsettings.json");

            return builder.Build();
        }
    }
}
