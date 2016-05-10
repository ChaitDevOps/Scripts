#!/usr/bin/perl

use strict;
use warnings;

use Data::Dumper qw(Dumper); 
my @foo = qw (foo foot fool);
my @bar = qw (bar bars barred);
#my %hash = ( a => 1, b => 2, c => 3 );
#my @array = qw (1 2 3);
#print Dumper(@array);  
print Dumper(\@foo, \@bar);