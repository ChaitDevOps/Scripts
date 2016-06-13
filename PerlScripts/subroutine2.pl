#!/usr/bin/perl
#return values from subroutint to array
# sub getvalue {
# 	return 1,2,3,4,5,6;
# }
# @arr = getvalue;
# print join (",",@arr) . "\n";

#return values from STDIN into array.

sub getvalue {
	print "Enter numbers seperated by Space\n";
	@arr = split(/\s+/, <>);
	@arr2 = sort ( { $a <=> $b } @arr);
}

@newarr = getvalue;
print join (",",@newarr) . "\n";