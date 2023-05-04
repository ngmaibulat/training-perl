use Test::Deep;

my @array1 = (1, 2, [3, 4], {a => 5, b => 6});
my @array2 = (1, 2, [3, 4], {a => 5, b => 7});

ok(!isnt_deeply(\@array1, \@array2), 'arrays are not equal');


# use Test::More;

# my @array1 = (1, 2, [3, 4], {a => 5, b => 6});
# my @array2 = (1, 2, [3, 4], {a => 5, b => 7});

# ok(! is_deeply(\@array1, \@array2, 'arrays are equal'));

