#!/usr/bin/perl

use strict;
use warnings;
use feature 'say';

my $text = "shilpa";
say $text;
$text =~ tr/shilpa/chaitu/;
say $text;