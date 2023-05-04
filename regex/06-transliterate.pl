# qr (pattern)      # quote regular expression pattern

# m (pattern)       # match pattern
# s (pattern)       # substitute pattern
# tr (pattern)      # transliterate pattern
# y (pattern)       # transliterate pattern



my $string = "hello world";
$string =~ tr/a-z/A-Z/;
print "$string\n";   # prints "HELLO WORLD"


my $string = "foo bar baz";
$string =~ tr/ //d;
print "$string\n";   # prints "foobarbaz"
