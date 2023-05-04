
 # subroutine definition
 sub calc_average {
    # get total number of arguments passed
    $total_args = scalar(@_);
    my $sum = 0;
    # sum up all arguments
    foreach $arg (@_){
       $sum += $arg;
    }
    # calculate and return average
    my $average = $sum / $total_args;
    return ($average);
 }

 # subroutine call
 $a = calc_average(10, 20, 30);
 print "The average is $a\n";
 $a = calc_average(10, 15, 2, 8, 90);
 print "The average is $a\n";
