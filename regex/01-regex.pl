$name = "Josef";

if ($name =~ m/jo/) {
    print "Match found\n"
} else {
    print "No match found\n"
}

if ($name =~ m/jo/i) {
    print "Match found (case insensitive)\n"
} else {
    print "No match found (case insensitive)\n"
}
