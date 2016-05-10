#!/usr/bin/perl

use strict;
use warnings;

my $filename = "file";
my $newfilename = "newfile";
open (IN, "<$filename") or die "Cannot open File: $!";
open (OUT, ">$newfilename") or die "Cannot open File: $!";
while (<IN>) {
	 s/[^\S\n]//g;
	 print OUT $_ or die "Cannot print to OUT: $!";
}
close (IN);
close (OUT);