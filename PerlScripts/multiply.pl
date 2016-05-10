#!/usr/bin/perl

use warnings;

sub multiply {

print "Enter the number to get Multiplication Table\n";

@table = (1,2,3,4,5,6,7,8,9,10);
while (<>) {
	print "Thanks, Here you go:\n";
	for $i (@table) {
	$i *= $_;
	print "$i\n";
	}
	exit;
}
}

#&multiply;

sub factorial {

print "Enter the num to calculate Factorial\n";
chomp($number = <>);
$factorial = 1;
for ($i=1; $i <= $number; $i++) {
	$factorial *= $i;
}
print "$number! = $factorial\n";
}

&factorial;