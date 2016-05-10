#!/usr/bin/perl

use warnings;
print "Enter a Number\n";
number: while (<>) {
	next number if /^-/ ;
	print;
	}