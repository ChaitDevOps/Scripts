#!/usr/bin/perl
# Quantifiers = '+'' - One or More. 
# 			  = '?'  - Zero or One.
#			  = '*'	 - Zero or More.
#			  = '.*' - Matches the most characters possible before the next character.

use strict;
use warnings;

sub regex1 {

	# ##Enter at least one a, followed by any number of b's
	# print "Enter at least one a, followed by any number of b's\n";
	# my $pattern = <>;
	# if ($pattern =~ /^a+b*/) {
	# 	print "Match Found\n";
	# } else {
	# 	print "Match Not Found\n";
	# }

	# Enter any number of backslashes followed by any number of asterisks.
	# print "Enter any number of backslashes followed by any number of asterisks\n";
	# my $pattern = <>;
	# if ($pattern =~ /^\\*(\*)+$/) {
	# 	# body...
	# 	print "Pattern Found\n";
	# } else {
	# 	# else...
	# 	print "Pattern not found\n";
	# }

	# Three consecutive copies of whatever is contained in $pattern
	#print "Enter a pattern\n";
	# my $pattern = "chait";
	# print "$pattern\n" x 3;

	#Match any 5 characters including newline.
	# print "Enter any 5 characters including newline\n";
	# my $pattern = <>;
	# chomp $pattern;
	# $pattern =~ /.|\n {5} /;
	# print "$pattern";

	#Look for a line containing a,e,i,o,u
	# print "Enter alphabets with vowels in them\n";
	# my $line = <>;
	# chomp $line;
	# #if ($line =~ /a*e*i*o*u/i) { #Vowels can be anywhere in the line
	# #if ($line =~ /aeiou/i) { #Vowels have to be in order.
	# if ($line =~ /[^eiou]*a[^iou]*e[^aou]*i[^aeu]*o[^aei]*u/i) {

	# 	print "Contains all vowels in order\n";
	# } else {
	# 	# else...
	# 	#print "Line doesn't contain all the Vowels\n";
	# 	print "Vowels not in order\n";
	# }

	## reads /etc/passwd and print username and realname 
	my $filename = '/etc/passwd';
	open (my $fh , '<:encoding(UTF-8)', $filename) or die "Cannot Open File: $filename\n";
	while (my $row = <$fh>) {
		chomp $row;
		my ($user, $real) = (split /:/, $row) [0,4];
		print "$user : $real\n";
		#my @fields = split(/:+/, $row);
		#print "User: $fields[0]" . "\t" . "RealName: $fields[4]" . "\n";
	}

}

regex1;
