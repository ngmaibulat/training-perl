#!/bin/bash

### Common packages
cpanm DateTime
cpanm Dotenv
cpanm Log::Log4perl
cpanm Text::ANSITable

### Web
cpanm JSON
cpanm Crypt::JWT
cpanm LWP::UserAgent
cpanm LWP::Protocol::https

### Testing

cpanm Test::More
cpanm Test::Deep
cpanm Test::Warn

### Dancer

cpanm Dancer2
cpanm Dancer2::Plugin::JWT

### Database related
cpanm DBI
cpanm DBD::SQLite

# Postgres:
cpanm DBD::Pg

### Update
cpan -u


