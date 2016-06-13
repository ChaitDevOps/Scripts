#!/usr/bin/perl

use warnings;

sub num_operator {

while (<>) {
	if ($_ > 100) {
	print "Number too Big\n";
	} elsif ($_ < 10) {
	print "Number too Small\n";
	exit;
	} else {
	print "Correct Range entered\n";
	}
 	}
}

sub alpha_operator {

while (<>) {
	if ($_ gt 'C' && $_ lt 'T') {
	print "Good Choice, Keep Going.\n";
	} else {
	print "You can Only Enter Between 'C' and 'T'\n";
	exit;
	}
}
}

##Main Code
print "Enter Either A or 1\n";
while (<>) {
	if ($_ =~ m/[a-zA-Z]/ ) {
	print "You entered Alphabet\n";
	&alpha_operator;
	} elsif ( $_ =~ m/[0-9]/ ) {
	print "You entered Number\n";
	&num_operator;
	}
}