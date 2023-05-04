
my @words = ("apple", "banana", "cherry", "date", "elderberry");

# Use map to transform each word in the @words array to its length
my @word_lengths = map { length($_) } @words;

print "Word lengths: ", join(", ", @word_lengths), "\n";
