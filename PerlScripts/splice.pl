#!/usr/bin/perl

# use warnings;
# sub splice {

# @array=(1,2,3,5);
# @newarray = sort(@array,4);
# print "Array: @newarray\n";
# print "Length of array:" . ($#newarray + 1) . "\n";

# for $each (@newarray) {

# 	print "Number: $each\n";
# 	}
# }
# &splice;

sub splice {
	# body...
	@array=(1,2);
	splice(@array,3,0,3);
	$" = ',';
	print "@array\n";
}
&splice;