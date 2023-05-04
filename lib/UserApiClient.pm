package UserApiClient;

use strict;
use warnings;
use LWP::UserAgent;
use JSON;


# Constructor method
sub new {
    my $class = shift;
    my %args = @_;

    # Create a new LWP::UserAgent object
    my $ua = LWP::UserAgent->new();

    # Set the base URL for the API
    my $base_url = "https://jsonplaceholder.typicode.com";

    # Create a hashref to store the object state
    my $self = {
        ua => $ua,
        base_url => $base_url,
        %args,
    };

    bless $self, $class;
    return $self;
}

# Helper method to make a GET request to the API
sub get {
    my ($self, $endpoint) = @_;

    # Construct the full URL for the API endpoint
    my $url = $self->{base_url} . $endpoint;

    # Create an HTTP GET request
    my $request = HTTP::Request->new(GET => $url);

    # Send the request and get the response
    my $response = $self->{ua}->request($request);

    # Check for errors
    die "Error: " . $response->status_line unless $response->is_success;

    # Decode the JSON response
    my $data = decode_json($response->content);

    return $data;
}

# Method to get all users
sub get_users {
    my ($self) = @_;

    my $data = $self->get("/users");

    return $data;
}

# Method to get a specific user by ID
sub get_user_by_id {
    my ($self, $id) = @_;

    my $data = $self->get("/users/$id");

    return $data;
}

1; # Return true to indicate that the module loaded successfully
