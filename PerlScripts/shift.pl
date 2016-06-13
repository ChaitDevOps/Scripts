#!/usr/bin/perl

use warnings;

sub shift {

@array=(1,2,3,4);
$variable = shift(@array);
print "Shift: $variable\n";
}
&shift;

sub unshift {

@array=(1,2,3,5);
unshift(@array,4);
@newarray = sort @array;
print "UnShift: @newarray\n";
print "Length of newarray:" . ($#newarray + 1) . "\n";
}
&unshift;