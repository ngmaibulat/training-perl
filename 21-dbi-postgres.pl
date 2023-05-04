#!/usr/bin/perl

use strict;
use warnings;
use Dotenv;
use DBI;
use Text::ANSITable;
 
# don't forget this if you want to output utf8 characters
binmode(STDOUT, ":utf8");

Dotenv->load;

my $host = $ENV{'DB_HOST'};
my $port = $ENV{'DB_PORT'};
my $database = $ENV{'DB_NAME'};
my $username = $ENV{'DB_USER'};
my $password = $ENV{'DB_PASS'};

my $DB_URL = "dbi:Pg:dbname=$database;host=$host;port=$port";

# Connect to the database
my $dbh = DBI->connect($DB_URL, $username, $password, {AutoCommit => 0}) or die "Could not connect to database: " . DBI->errstr;

# Prepare and execute a SELECT statement
my $sth = $dbh->prepare("SELECT * FROM country") or die "Could not prepare statement: " . $dbh->errstr;
$sth->execute() or die "Could not execute statement: " . $sth->errstr;


my $t = Text::ANSITable->new;
 
# set styles
$t->border_style('UTF8::SingleLineBold');  # if not, a nice default is picked
$t->color_theme('Standard::NoGradation');  # if not, a nice default is picked
 
# fill data
$t->columns(["Country", "Region", "Population"]);

# Fetch and print the results
while (my $row = $sth->fetchrow_arrayref()) {
    # print join(",", @$row) . "\n";
    $t->add_row([$row->[0], $row->[1], $row->[2]]);
}

# draw it!
print $t->draw;

# Disconnect from the database
$dbh->disconnect();
