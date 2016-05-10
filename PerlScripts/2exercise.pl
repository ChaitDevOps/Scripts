#!/usr/bin/perl

use strict;
use warnings;
#hello

# sub reverse_list {
# 	# body...
# 	# Reversing the list input at STDIN
# 	my $line = <>;
# 	chomp $line;
# 	my @lines = split /\s+/,$line;
# 	my @reverseline = reverse (@lines);
# 	print "@reverseline\n";
# }

# reverse_list;

sub random {
	# body...
	# Print a Random String from A List.
	srand;
	print "Enter The String\n";
	my @string = <>;
	print "Answer: $string[rand(@string)]"; 
}
random;