#!/usr/local/bin/perl

# $num = 10;

print "Enter a number: ";
my $num = <STDIN>;
chomp($num);  # remove newline character from input

if ($num > 0) {
    print "Num is postivie\n";
}
elsif ($num < 0) {
    print "Num is negative\n";
}
else {
    print "Num is 0\n";
}

my $msg = $num > 0 ? "Num is positive\n" : "Num is negative or Zero\n";
print $msg;
