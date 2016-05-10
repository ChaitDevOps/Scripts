#!/usr/bin/perl

#use warnings;

#When you pass variables to subroutine, they are store in special variable @_

# sub printok {
# 	# body...
# 	$internal_value = shift(@_);
# 	if ($internal_value > 10) {
# 		print "value is $internal_value\n";
# 	} else {
# 		print "value is too smalll\n";
# 	}
# }
# chomp($value = <>);
# printok ($value);

#Return Values with Subroutines
#Simple addition, fixed variables.
# sub addit {
# 	($value1, $value2) = @_;
# 	#return $value1 + $value2;
# 	print "$value1 + $value2 = " . ($value1 + $value2) . "\n";
# }
# addit 2,2;

#Variable addition.
#Add at will.
# sub add_will {
# 	$sum = 0;
# 	for $element(@_) {
# 		$sum += $element;
# 	}
# 	print join ("+",@_) . "=" . $sum . "\n";
# }
# add_will 4,5,6,7,8;

#Checking No Of Args passed at Input
#Do this by using special variable $#_
# sub add_input {
# 	($value1, $value2) = @_;
# 	if ($#_ > 1) {
# 		$value3 = @_[2];
# 	} else {
# 		$value3 = 1;
# 	}
# 	print "$value1 + $value2 + $value3" . " = " . ($value1 + $value2 + $value3) . "\n";
# 	print "No of subroutine params: $#_\n";
# }
# add_input 2,4;

#Finding the size of an Array
#When array is being input from STDIN
# sub size {
# 	@arr = split(/\,+/, <>);
# print "Size of Array:" . scalar(@arr) . "\n";
# }
# size;

#When array is input from Subroutine
sub size {
	push(@arr,@_);
	print "Size of Array:" . scalar(@arr) . "\n";
}
size 1,2,3,4,5;
print "Arsenal Rocks!!!\n";
