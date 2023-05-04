use Log::Log4perl;

# Configure Log4perl with a simple layout and a file appender


Log::Log4perl->init('log.config');

# Get a logger object for the current package
my $logger = Log::Log4perl->get_logger();


# Log messages at different levels
$logger->debug("Debug message");
$logger->info("Info message");
$logger->warn("Warning message");
$logger->error("Error message");
$logger->fatal("Fatal message");
