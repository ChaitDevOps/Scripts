#!/usr/bin/perl

use strict;
use warnings;
sub cardmap {
	my($num) = @_; # Accepting more than one listed variable hence variable should be inside paranthesis.
	my %engname = (

		1 => "one",
		2 => "two",
		3 => "three",
		4 => "four",
		5 => "five",
		6 => "six",
		7 => "seven",
		8 => "eight",
		9 => "Nine" 
		);
	if ($engname{$num}) {
		return $engname{$num};
	} else {
		return $num;
	}

}


# Print English Name value of a number
# while (<>) {
# 	chomp;
# 	my $value = cardmap($_);
# 	print "The EnglishName Value of $_ is: $value\n";
# 	exit;

# }

# Print result "TwoPlusTwo equals four"
print "Enter the First Number\n";
chomp (my $first = <>);
print "Enter the Second Number\n";
chomp (my $second = <>);
print cardmap($first) . " plus " . cardmap($second) . " equals " . cardmap($first+$second) . "\n";

