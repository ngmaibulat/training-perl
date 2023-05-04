use Test::More tests => 1;

my @array1 = (1, 2, [3, 4], {a => 5, b => 6});
my @array2 = (1, 2, [3, 4], {a => 5, b => 6});

is_deeply(\@array1, \@array2, 'arrays are equal');
