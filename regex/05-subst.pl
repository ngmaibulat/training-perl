
use strict;

# qr (pattern)      # quote regular expression pattern

# m (pattern)       # match pattern
# s (pattern)       # substitute pattern
# tr (pattern)      # transliterate pattern
# y (pattern)       # transliterate pattern


my $regex = qr/aza/;
my $replacement = "-AZA-";
my $string = "kazan";

$string =~ s/$regex/$replacement/g;

print $string . "\n";


my $string = "abcdefghi";
$string =~ s/(.{3})/$1./g;
print "$string\n";   # prints "abc.def.ghi."
