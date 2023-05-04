
brew install libunistring

brew uninstall wget
brew install wget
brew install cpanminus

cpanm DateTime
cpanm Dotenv
cpanm DBI
cpanm DBD::SQLite
cpanm Log::Log4perl
cpanm Text::ANSITable
cpanm JSON
cpanm LWP::UserAgent
cpanm LWP::Protocol::https

cpanm Dancer2
cpanm Dancer2::Plugin::JWT
Crypt::JWT


cpanm Test::More
cpanm Test::Deep
cpanm Test::Warn

cpan -u

brew install postgresql@15
brew install libpq
brew link libpq --force

cpanm DBD::Pg --force
