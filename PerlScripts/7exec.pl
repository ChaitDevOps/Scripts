#!/usr/bin/perl
# Quantifiers = '+'' - One or More. 
# 			  = '?'  - Zero or One.
#			  = '*'	 - Zero or More.
#			  = '.*' - Matches the most characters possible before the next character.

use strict;
use warnings;

sub regex1 {

	# ##Enter at least one a, followed by any number of b's
	# print "Enter at least one a, followed by any number of b's\n";
	# my $pattern = <>;
	# if ($pattern =~ /^a+b*/) {
	# 	print "Match Found\n";
	# } else {
	# 	print "Match Not Found\n";
	# }

	# Enter any number of backslashes followed by any number of asterisks.
	print "Enter any number of backslashes followed by any number of asterisks\n";
	my $pattern = <>;
	if ($pattern =~ /^\/?) {
		# body...
	} else {
		# else...
	}
}

regex1;
