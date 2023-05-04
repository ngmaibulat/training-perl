# use lib '../lib';

use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/../lib";
use DemoClass;

use Test::More tests => 1;

my $obj = DemoClass->new(42);
ok($obj->get_value() == 42, 'get_value() returns correct value');
