
use lib '.';

use Person;
use Emp;

my $obj = Person->new(name => "John", age => 30);
$obj->greet();

my $person = new Emp("John", "Doe", "123-45-6789");
$person->setFirstName("Jane");
print $person->getFirstName() . "\n"; # prints "Jane"
