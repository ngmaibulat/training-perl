
my @words = ("apple", "banana", "cherry", "date", "elderberry");

# Use qr to create a regular expression object that matches any word that starts with "b" or "c"
my $regex = qr/^(b|c)/;

# Use grep to filter the @words array to only include words that match the regular expression

my @filtered_words = grep { $_ =~ $regex } @words;

print "Filtered words: ", join(", ", @filtered_words), "\n";
