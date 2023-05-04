package Emp;

sub new {
    my $class = shift;
    my $self = {
        _firstName => shift,
        _lastName  => shift,
        _ssn       => shift,
    };
    bless $self, $class;
    return $self;
}

sub setFirstName {
    my ($self, $firstName) = @_;
    $self->{_firstName} = $firstName if defined($firstName);
    return $self->{_firstName};
}

sub getFirstName {
    my $self = shift;
    return $self->{_firstName};
}

sub setLastName {
    my ($self, $lastName) = @_;
    $self->{_lastName} = $lastName if defined($lastName);
    return $self->{_lastName};
}

sub getLastName {
    my $self = shift;
    return $self->{_lastName};
}

sub setSSN {
    my ($self, $ssn) = @_;
    $self->{_ssn} = $ssn if defined($ssn);
    return $self->{_ssn};
}

sub getSSN {
    my $self = shift;
    return $self->{_ssn};
}

1;
