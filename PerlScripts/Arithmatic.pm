#!/usr/bin/perl;
use strict;
use warnings;
package Arithmatic;
use Exporter;
our @ISA = qw(Exporter);
our @EXPORT = qw(add subtract);
our @EXPORT_OK = qw(multiply divide);

sub add {
	my ($num1, $num2) = @_;
	my $result = $num1 + $num2;
	return $result;
}

sub subtract {
	my ($num1, $num2) = @_;
	my $result = $num1 - $num2;
	return $result; 
}

sub divide {
	my ($num1, $num2) = @_;
	my $result = $num1 / $num2;
	return $result; 
}

sub multiply {
	my ($num1, $num2) = @_;
	my $result = $num1 * $num2;
	return $result; 
}