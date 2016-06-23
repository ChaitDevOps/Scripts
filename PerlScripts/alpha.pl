#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);
my @array;
chomp (my $line = <>);
print Dumper($line);

@array = split (/,/,$line); #Splitting List sepearted by Comma and assigning each element into Array.

foreach my $x (@array) {
	print "$x\n";
}
print Dumper(@array);
