use LWP::UserAgent;
use JSON;
use Test::More;
use Test::Deep;

# Define the URL for the API endpoint
my $url = "https://jsonplaceholder.typicode.com/users";

# Create an instance of the LWP::UserAgent class
my $ua = LWP::UserAgent->new();

# Create an HTTP GET request
my $request = HTTP::Request->new(GET => $url);

# Send the request and get the response
my $response = $ua->request($request);

# Check the HTTP response code
is($response->code, 200, "HTTP response code is 200");

# Decode the JSON response
my $data = decode_json($response->content);

# Check the number of records returned
is(scalar @{$data}, 10, "10 records are returned");

# Check the structure of the first record
cmp_deeply($data->[0], {
    id => 1,
    name => re('Leanne Graham'),
    username => re('Bret'),
    email => re('Sincere@april.biz'),
    address => {
        street => re('Kulas Light'),
        suite => re('Apt. 556'),
        city => re('Gwenborough'),
        zipcode => re('92998-3874'),
        geo => {
            lat => re('-37.3159'),
            lng => re('81.1496'),
        },
    },
    phone => re('1-770-736-8031 x56442'),
    website => re('hildegard.org'),
    company => {
        name => re('Romaguera-Crona'),
        catchPhrase => re('Multi-layered client-server neural-net'),
        bs => re('harness real-time e-markets'),
    },
}, "First record has correct structure");

done_testing();

