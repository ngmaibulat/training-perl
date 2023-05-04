#!/usr/local/bin/perl

use strict;
use warnings;

my @files = glob("*.pl");

# print @files;

foreach my $file (@files) {
    print "$file\n";
}
