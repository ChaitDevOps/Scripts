#!/usr/bin/perl
## Relearning Perl
#
# Hello World.

## Here $name is a scalar variable
## It can hold either a string or a number


use strict;
use warnings;

#my $secretword = "Arsenal";
# sub Hello_World {
# 	print "Enter your Name\n";
# 	my $name = <>;
# 	chomp($name);
# 	if ($name eq "Chait") {
# 		print "Hello $name, you are awesome\n";
# 	} else {
# 		print "Hello $name, Welcome.\n";
# 		print "Enter the Secret Word\n";
# 		my $secret = <>;
# 		chomp ($secret);
# 		while ($secret ne $secretword) {
# 			print "That is not the right secret word\n";
# 			$secret = <>;
# 			chomp($secret);
# 		}
# 	}
	
# }

#Hello_World;

my @secretword = qw (Arsenal Wenger Henry);
sub Hello_World {
	print "Enter your Name\n";
	my $name = <>;
	chomp($name);
	if ($name eq "Chait") {
		print "Hello $name, you are awesome\n";
	} else {
		print "Hello $name, Welcome.\n";
		print "Enter the Secret Word\n";
		my $secret = <>;
		chomp ($secret);
		my $i=0;
		my $correct = "maybe";
		while ($correct eq "maybe") {
			if ($secretword[$i] eq $secret) {
				$correct = "yes";
			} elsif ($i < 2) {
				$i++;
			} else {
				print "Wrong, Please try again\n";
				$secret = <>;
				chomp ($secret);
				$i=0;
			}
		}
	}
	
}
Hello_World;