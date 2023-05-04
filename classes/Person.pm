package Person;

sub new {
    my ($class, %args) = @_;
    my $self = bless {}, $class;
    $self->{name} = $args{name};
    $self->{age} = $args{age};
    return $self;
}

sub greet {
    my $self = shift;
    print "Hello, my name is $self->{name} and I am $self->{age} years old\n";
}

1;
