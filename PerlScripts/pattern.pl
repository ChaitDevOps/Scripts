#!/usr/bin/perl

use warnings;

sub pattern {

$line = ".Hello!";

if ( $line =~ m/^\./) {
	print "A Line shouldn't begin with Period!\n";
	print "Correcting it...\n";
	$line =~ s/^\.//g ;
	print "$line\n";
	}
}

&pattern;