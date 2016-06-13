#!/usr/bin/perl

#use warnings;

sub unless_case {
	while (<>) {
	chomp;
	unless ( /^q/i) {
		print . print "\n";
		
	} else { exit;}
}
}
&unless_case;