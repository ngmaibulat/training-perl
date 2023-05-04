use DBI;

my $dbh = DBI->connect("dbi:SQLite:dbname=test.db", "", "");

# my $ddl = "
# CREATE TABLE mytable (id INTEGER PRIMARY KEY, name VARCHAR(50))
# ";

# my $sth = $dbh->prepare($ddl);
# $sth->execute();

# my $insert = "insert into mytable values(1, 'Ufa')";
# my $sth = $dbh->prepare($insert);
# $sth->execute();


my $sth = $dbh->prepare("INSERT INTO mytable (id, name) VALUES (?, ?)");
$sth->execute(2, "John Doe");

my $sth = $dbh->prepare("SELECT * FROM mytable");
$sth->execute();

# my $sth = $dbh->prepare("SELECT * FROM mytable WHERE id = ?");
# $sth->execute(1);

while (my $row = $sth->fetchrow_hashref) {
    print "ID: $row->{id}\n";
    print "Name: $row->{name}\n";
}

$dbh->disconnect();
