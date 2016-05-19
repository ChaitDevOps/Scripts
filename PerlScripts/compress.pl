#!/usr/bin/perl
use strict;
use warnings;

my $string = "aaaaabbbbbbbbbccccpqrstuv";

sub compress
{
    my($text) = @_;
    $text =~ s/((.)\2+)/$2 . length($1)/ge;
    print "$text\n";
}
compress $string;