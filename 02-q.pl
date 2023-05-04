
$var = 25;

$str1 = q (Hello $var);       # same as 'Hello $var'
$str2 = qq (World $var);      # same as "World $var"

$str3 = qx (ls -la);          # quote string and execute

@lst = qw (item1 item2);         # quote list
# qr (pattern)      # quote regular expression pattern
# m (pattern)       # match pattern
# s (pattern)       # substitute pattern
# tr (pattern)      # transliterate pattern
# y (pattern)       # transliterate pattern

print $str1 . "\n";
print $str2 . "\n";
print $str3 . "\n";

print "@lst" . "\n";
