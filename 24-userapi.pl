use strict;
use warnings;

use FindBin;
use lib "$FindBin::Bin/lib";
use UserApiClient;
use Data::Dumper;

# Create a new instance of the UserApiClient class
my $client = UserApiClient->new();

# Get all users
my $users = $client->get_users();

# Get user with ID 1
my $user = $client->get_user_by_id(1);

# Do something with the user data...
print "%$user";

print Dumper($user);
