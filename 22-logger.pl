use Log::Log4perl;

# Configure Log4perl with a simple layout and a file appender

$config = qq(
    #log4perl.category = DEBUG, FileApp
    log4perl.category = ERROR, FileApp
    log4perl.appender.FileApp = Log::Log4perl::Appender::File
    log4perl.appender.FileApp.filename = logfile.log
    log4perl.appender.FileApp.layout = Log::Log4perl::Layout::SimpleLayout
);

Log::Log4perl->init(\ $config);

# Get a logger object for the current package
my $logger = Log::Log4perl->get_logger();


# Log messages at different levels
$logger->debug("Debug message");
$logger->info("Info message");
$logger->warn("Warning message");
$logger->error("Error message");
$logger->fatal("Fatal message");
