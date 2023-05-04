
@colors = ('red', 'blue', 'yellow', 'pink', 'black');

foreach $color (@colors) {
    if ($color eq 'blue') {
        next;
    }

    print "Color: $color\n";
    
    if ($color eq 'pink')  {
        last;
    }
}

print "Exited loop!\n";
