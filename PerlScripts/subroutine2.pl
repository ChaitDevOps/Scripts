#!/usr/bin/perl
use strict;
use warnings;
#return values from subroutint to array
sub getvalue {
	return 1,2,3,4,5,6;
}
my @arr = getvalue;
print join (",",@arr) . "\n";

#return values from STDIN into array.

# sub getvalue {
# 	print "Enter numbers seperated by Space\n";
# 	@arr = split(/\s+/, <>);
# 	@arr2 = sort ( { $a <=> $b } @arr);
# }

#  @newarr = getvalue;
#  print join (",",@newarr) . "\n";

# sub to add numbers from 1 to 100.

# sub add_em {
# 	# body...
# 	my $sum = 0;
# 	foreach my $x (@_) {
# 		# body...
# 		$sum += $x;
# 	}
# 	return $sum
# }
# my $a = add_em(1..5);
# print "The Sum of Values is: $a\n";
