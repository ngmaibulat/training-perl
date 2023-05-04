
my $regex = qr/:/;
my $str = "one:two:three";
my @words = split $regex, $str;

print join(",", @words), "\n"; # prints "baz"
