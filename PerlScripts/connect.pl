#!/usr/bin/perl
# Connection Script for DB MySQL
#
# $dsn    Database source name
#   $dbh    Database handle object
#   $sth    Statement handle object
#   $h      Any of the handle types above ($dbh, $sth, or $drh)
#   $rc     General Return Code  (boolean: true=ok, false=error)
#   $rv     General Return Value (typically an integer)
#   @ary    List of values returned from the database.
#   $rows   Number of rows processed (if available, else -1)
#   $fh     A filehandle
#   undef   NULL values are represented by undefined values in Perl
#   \%attr  Reference to a hash of attribute values passed to methods

# DBI-connect (API used to connect to the DB)
use strict;
use warnings;
use DBI;

sub connection {
	my $driver = "MySQL";
	my $database = "TESTDB";
	my $dsn = "DBI:$driver:database=$database";
	my $userid = "testuser";
	my $password = "test123";
	my $dbh = DBI->connect($dsn, $userid, $password) or die $DBI::errstr; #If connection is successful, DB handle is stored in $dbh.
	my $sth = $dhb->prepare( "INSERT INTO TEST_TABLE
                       (FIRST_NAME, LAST_NAME, SEX, AGE, INCOME )
                        values
                       ('john', 'poul', 'M', 30, 13000)"); #Preparing SQL statemenet with the api "prepare" to instert rows into DB
	$sth->execute() or die $DBI::errstr; # execute API is exectuing the SQL statemtnt.
	$sth->finish(); #Closing the DB Hanle.
	$dbh->commit or die $DBI::errstr; # Commiting the SQL statement handle.

}

sub insert {
	# body...
	my $driver = "MySQL";
	my $database = "TESTDB";
	my $dsn = "DBI:$driver:database=$database";
	my $userid = "testuser";
	my $password = "test123";
	my $firstname = "Chait";
	my $lastname = "Bing";
	my $sex = "M";
	my $age = 30;
	my $salary = 100;
	my $dbh = DBI->connect($dsn, $userid, $password) or die $DBI::errstr;
	my $sth = $dbh->prepare( " INSERT INTO TEST_TABLE
                       (FIRST_NAME, LAST_NAME, SEX, AGE, INCOME )
                        values
                       ('?', '?', '?', ?, ?)"); #binding the values to variable
	my $sth=>execute($firstname,$lastname,$sex,$age,$income) or die $DBI::errstr; #assigning values to insert in variable format.
	$sth->finish();
	$dbh->commit or die $DBI::errstr;

}

sub select {
	# body...
	my $driver = "MySQL";
	my $database = "TESTDB";
	my $dsn = "DBI:$driver:database=$database";
	my $userid = "testuser";
	my $password = "test123";
	my $dbh = DBI->connect($dsn, $userid, $password) or die $DBI::errstr;
	my $sth = $dbh->prepare( " select FIRST_NAME, LAST_NAME from TEST_TABLE where AGE > 20");
	$sth->execute() or die $DBI:errstr;
	while ( my @row = $sth->fetchrow_array() ) {
		# body...
		my ($firstname, $lastname) = @row;
		print "FirstName = $firstname, LastName = $lastname\n";
	}
	$sth->finish();
}