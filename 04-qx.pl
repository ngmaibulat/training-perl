

$cmd1 = qx (ls -la);       # quote string and execute
$cmd2 = qx (host google.com);       # quote string and execute

# qr (pattern)      # quote regular expression pattern
# m (pattern)       # match pattern
# s (pattern)       # substitute pattern
# tr (pattern)      # transliterate pattern
# y (pattern)       # transliterate pattern

print $cmd1 . "\n\n";

print $cmd2 . "\n\n";
