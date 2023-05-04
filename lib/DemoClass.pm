package DemoClass;

sub new {
    my ($class, $value) = @_;
    my $self = { value => $value };
    bless $self, $class;
}

sub get_value {
    my ($self) = @_;
    return $self->{value};
}

1;
