#!/usr/bin/perl

use strict;
use warnings;

my $sourcedir = "/Users/Maddy/Downloads/";
my $targetdir = "/Users/Maddy/Downloads/backups";
my $date = qx(date \"+%y%m%d%H%M\");
my $archive = "$targetdir/archive\.$date.tar\.gz";
my $log = "$targetdir/archive.$date.log";

	open (my $fh, ">> $log") || die "problem opening $log\n";
	#`find $sourcedir \( ! -regex ".*/\..*" \) -type f -prune -atime -10 -print0 | xargs -0 -J % mv % $targetdir`;
	my $move = qx(find $sourcedir -maxdepth 1 -not -path '*/\.*' -type f -prune -amin -29600 -print0 | xargs -0 -J % mv % $targetdir); 
	print $fh "Following are the Files to be Archived\n";
	my $tarit = qx(tar -czf $archive $targetdir/* --exclude='$targetdir/*\.gz' 1 >> $log 2>&1);
	#my $cleanup = `find $targetdir -type f -name "*" ! -name "*.gz" ! -name "*.log" -print0 | xargs -0 -J % rm -r %`;
	#system($cleanup);