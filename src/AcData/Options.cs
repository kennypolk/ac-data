using CommandLine;

namespace AcData
{
    public class Options
    {
        [Option('v', "version", Required = true, HelpText = "Publish version")]
        public string Version { get; set; }
        [Option('o', "output", Required = true, HelpText = "Directory to output files")]
        public string OutputPath { get; set; }
        [Option("dry-run", Required = false)]
        public bool DryRun { get; set; }
    }
}
