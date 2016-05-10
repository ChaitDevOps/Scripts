#!/usr/bin/perl

use strict;
use warnings;

use File::Copy;
my ($source, $target) = ($ARGV[0] , $ARGV[1]);

my $args = $#ARGV + 1;
if ($args < 2) {
	print "You need to enter 2 Files\n";
	exit;
}


copy("$source","$target") or die "Couldn't copy: $!";