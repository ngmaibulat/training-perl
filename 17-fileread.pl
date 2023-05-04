#!/usr/local/bin/perl

use strict;
use warnings;

open(FILE, "<", "plan.md") or die "Can't open file: $!\n";

my @lines = <FILE>;
print @lines;

close(FILE);
