#!/usr/bin/perl
use strict;
use warnings;

#Working Code to Sort List in ascending order.
print "Enter Numbers to sort\n";
chomp (my $arr = <STDIN>);
my @array = split(/\s+|,/, $arr);
@new = sort ( { $a cmp $b} @array);
print join (",", @new) . "\n";

