#!/usr/bin/perl

use warnings;

sub push {
@array = (1,2,3);
push (@array,"4");
print "@array\n";
print "Length:" .  $#array . "\n";
}

&push;

sub pop {
@array = ("1","2","3","x");
$newvar = pop (@array);
print "$newvar\n";
}

&pop;