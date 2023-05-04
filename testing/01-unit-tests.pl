use Test::More tests => 4;

# Example 1: testing a function that returns a value
sub add_numbers {
    my ($num1, $num2) = @_;
    return $num1 + $num2;
}

ok(add_numbers(2, 2) == 4, '2 + 2 = 4');
ok(add_numbers(5, -2) == 3, '5 + (-2) = 3');

# Example 2: testing a function that modifies a data structure
sub add_to_list {
    my ($list_ref, $item) = @_;
    push @$list_ref, $item;
}

my @list = (1, 2, 3);
add_to_list(\@list, 4);
is_deeply(\@list, [1, 2, 3, 4], 'added 4 to list');

# Example 3: testing a class method
package MyClass;

sub new {
    my ($class, $value) = @_;
    my $self = { value => $value };
    bless $self, $class;
}

sub get_value {
    my ($self) = @_;
    return $self->{value};
}

package main;

my $obj = MyClass->new(42);
ok($obj->get_value() == 42, 'get_value() returns correct value');

