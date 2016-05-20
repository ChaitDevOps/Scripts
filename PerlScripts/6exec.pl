#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);

# sub reverse_input {
# 	# read content of File and print in reverse order
# 	my @array = <>;
# 	print reverse @array;
# }

sub reverse_multipleinput {
	# read conetents of Multiple Files and print in reverse order individually.
	my @ARGV = <>;
	#chomp(@ARGV);
	#print Dumper @ARGV;
	my @new =  reverse @ARGV;
	print "@new\n";
}
reverse_multipleinput;