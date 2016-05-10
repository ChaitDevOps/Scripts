#!/usr/bin/perl

use strict;
use warnings;

# open my $in, '<', "employee";
# open my $out, '>', "log";

# while (<$in>) {
# 	print $out $_ if /Jason/ .. /Nisha/;
# }
# close $in;
# close $out;
my $filename = "employee";
my $log = "log";

open (IN, "<$filename");
open (OUT, ">$log" );

while (<IN>) {
	print OUT $_ if /Jason/ .. /Nisha/;
}
close (IN);
close (OUT);