#!/usr/bin/perl

use strict;
use warnings;
#hello

# sub circle {
# 	# body...
# 	# Finding Circumeference of Circle with Fixed Value
# 	my $radius = "12.5";
# 	my $pi = "3.141592654";
# 	my $circum = 2 * $pi * $radius;

# 	print "Circumference of Circle with Radius $radius = " . $circum . "\n";
# }
# circle;

# sub new_circle {
# 	# body...
# 	# Finding Circumeference of Circle with Radius as STDIN.
# 	my $radius = <STDIN>;
# 	chomp $radius;
# 	my $pi = "3.141592654";
# 	my $circum = 2 * $pi * $radius;

# 	print "Circumference of Circle with Radius $radius = " . $circum . "\n";
# }

# new_circle;

# sub multiply {
# 	# body...
# 	# Multiply 2 numbers from STDIN
# 	print "Enter Values to multiply seperated by a Comma\n";
# 	my $line = <STDIN>;
# 	chomp $line;
# 	my ($a,$b) = split /,/, $line;
# 	my $result = $a * $b;
# 	print "Result of Multiply $a \* $b = " . $result . "\n";
# }
# multiply;

sub string {
	# body...
	# Print String no of times indicated by STDIN
	print "Enter String followed by no of times, use comma as delimiter\n";
	my $line = <>;
	chomp $line;
	my ($str,$num) = split /,/,$line;
	for (my $var = 0; $var < $num; $var++) {
		# body...
	print "$str\n";
		
	}
}
string;
