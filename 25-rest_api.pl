#!/usr/bin/env perl
use Dancer2;

# Route to handle GET requests for a personalized greeting
get '/greet/:name' => sub {
    my $name = param('name');
    my $greeting = "Hello, $name!";
    return to_json { greeting => $greeting };
};

start;
