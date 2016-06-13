#!/usr/bin/perl
#
# Loops.pl
# Script that accepts Voters age as Input.
# Prints, if there are eligible to vote and count of eligible and non-eligible voters.
use strict;
use warnings;
use Data::Dumper qw(Dumper);

sub for_each {
	print "How Old Are you mate?\n";
	my @age = <>;
	chomp(@age);
	my $eligiblevoter = 0;
	my $nonligiblevoter = 0;
	foreach  (@age) {
		if ($_ ge 18) {
			print "$_: You are eligible to Vote\n";
			$eligiblevoter++;

		} else {
			print "$_: You aren't eligible to Vote yet!\n";
			$nonligiblevoter++;
		}
	}

	print "No of Eligible Voters: $eligiblevoter\n";
	print "No of Non-Eligible Voters: $nonligiblevoter\n";
}
for_each;

