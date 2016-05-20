#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);

# sub reverse_list {
# 	my $strings = <>;
# 	chomp($strings);
# 	my @array = split('\s' , $strings);
# 	my @arr = reverse (@array);
# 	#print Dumper @array;
# 	print "@arr\n";
# }
# reverse_list;

# sub random {
# 	# body...
# 	# Print a Random String from A List.
# 	srand;
# 	print "Enter The String\n";
# 	my @string = <>;
# 	print "Answer: $string[rand(@string)]"; 
# }
# random;

## $a = <> means, standard input is on same line. Its treated as a list. If new line is entered, it quits the stdin mode
## @a = <> means, its treated as an element on a separate line but note a new line is also added to the array. to get rid 
##	       of new line, introduce chomp.

sub new_list {
	my @a = <>;
	chomp(@a);
	print Dumper @a;
}

new_list;