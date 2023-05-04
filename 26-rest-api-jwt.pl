#!/usr/bin/env perl
use Dancer2;
use Dancer2::Plugin::JWT;
use Crypt::JWT qw(encode_jwt);

# Replace 'your_secret_key' with your actual secret key
my $secret_key = 'your_secret_key';

# Generate JWT token
sub generate_jwt_token {
    my $payload = {
        exp => time + 3600, # Expiration time: 1 hour
        data => {
            user_id => 1,
            username => 'John',
        },
    };
    return encode_jwt(payload => $payload, key => $secret_key, alg => 'HS256');
}

# Route to login and generate a JWT token
post '/login' => sub {
    # Replace this with your actual user validation logic
    my $username = body_parameters->get('username');
    my $password = body_parameters->get('password');

    if ($username eq 'John' && $password eq 'secret') {
        return to_json {
            success => 1,
            token => generate_jwt_token(),
        };
    }
    else {
        status 'unauthorized';
        return to_json { success => 0, message => 'Invalid username or password.' };
    }
};

# Route to handle GET requests for a personalized greeting
get '/greet' => jwt_auth required => sub {
    my $username = jwt_claims->{data}->{username};
    my $greeting = "Hello, $username!";
    return to_json { greeting => $greeting };
};

start;
