#!/usr/bin/perl

use warnings;

# sub slice {

# @array  = (1,2,3);
# @array1 = (4,5,6);
# @newarray = (@array, @array1);
# @slice	  = @newarray[2..4];
# print "NewArray: @newarray\n";
# print "Slice of NewArray: @slice\n";

# }
# &slice;

$var = "1,2";
$var =~ s/,/\n/xg;
print $var;