#!/usr/bin/perl

use strict;
use warnings;


#When you pass variables to subroutine, they are store in special variable @_

# sub printok {
# 	# body...
# 	my $internal_value = shift(@_);
# 	if ($internal_value > 10) {
# 		print "value is $internal_value\n";
# 	} else {
# 		print "value is too smalll\n";
# 	}
# }
# print "Enter any Number\n";
# chomp(my $value = <>);
# printok ($value);

# Return Values with Subroutines
# Simple addition, fixed variables.
# sub addit {
# 	my ($value1, $value2) = @_;
# 	#return $value1 + $value2;
# 	print "$value1 + $value2 = " . ($value1 + $value2) . "\n";
# }

# addit (2,2);

#Variable addition
#Add at will.
# sub add_will {
# 	my $sum = 0;
# 	for my $element(@_) {
# 		$sum += $element;
# 	}
# 	print join ("+",@_) . "=" . $sum . "\n";
# }
# add_will 4,5,6,7,8;

#Checking No Of Args passed at Input
#Do this by using special variable $#_

# sub add_input {
	
# 	 my ($value1, $value2) = @_;
# 	 my $value3 = '';
# 	if ($#_ > 1) {
# 		 $value3 = $_[2];
# 	} else {
# 		 $value3 = 1;
# 	}
# 	print "$value1 + $value2 + $value3" . " = " . ($value1 + $value2 + $value3) . "\n";
# 	print "No of subroutine params: $#_\n";
# }
# add_input 2,4;

#Finding the size of an Array
#When array is being input from STDIN
# sub size {
# 	my @arr = split(/[,+\s+]/, <>);
# print "Size of Array:" . scalar(@arr) . "\n";
# }
# print "Enter Values seperated by a comma or space\n";
# size;

#When array is input from Subroutine
sub size {
	push(my @arr,@_);
	print "Size of Array:" . scalar(@arr) . "\n";
	print "Last Element of Array:" . " " . pop(@arr) . "\n";
}
size 1,2,3,4,5;
print "Arsenal Rocks!!!\n";
