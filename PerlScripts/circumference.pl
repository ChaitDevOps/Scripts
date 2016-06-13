#!/usr/bin/perl

use strict;
use warnings;

sub circle {
	# body...
	# Finding Circumeference of Circle with Fixed Value
	my $radius = "12.5";
	my $pi = "3.141592654";
	my $circum = 2 * $pi * $radius;

	print "Circumference of Circle with Radius $radius = " . $circum . "\n";
}
#circle;

sub new_circle {
	# body...
	# Finding Circumeference of Circle with Radius as STDIN.
	my $radius = <STDIN>;
	chomp $radius;
	my $pi = "3.141592654";
	my $circum = 2 * $pi * $radius;

	print "Circumference of Circle with Radius $radius = " . $circum . "\n";
}

new_circle;