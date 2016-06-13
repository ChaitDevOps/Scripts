#!/usr/bin/perl

use strict;
use warnings;

my $count = 0;
#my @array = ("a","b","c","d","e","f");
my @array = qw (a b c d e f);
foreach my $x (@array) {
	my $lineno = $count++;
	print "$lineno: $x\n";
}
print "End of Array\n";
#print "This is the First Element: $array[0]\n";
#print "This is the Second Element: $array[1]\n";
#print "This is the Third  Element: $array[2]\n";
