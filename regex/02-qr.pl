# qr (pattern)      # quote regular expression pattern

# m (pattern)       # match pattern
# s (pattern)       # substitute pattern
# tr (pattern)      # transliterate pattern
# y (pattern)       # transliterate pattern



my $regex = qr/ufa|sterlitamak/;
my $string = "kazan";

if ($string =~ $regex) {
    print "Matched!\n";
}
else {
    print "Not matched!\n";
}
