#!/usr/bin/perl

#!/usr/bin/perl

package My::Module;  # saved as My/Module.pm
use strict;
use warnings;

use Exporter;
our @ISA = 'Exporter';
our @EXPORT = qw(@a @b);

our (@a, @b);

@a = 1..3;
@b = "a".."c";