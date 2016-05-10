#!/usr/bin/perl
use strict;
use warnings;
#hello

# sub temperature {
# 	# body...
# 	# Print Status of Temperature
# 	print "What's the temperature outside?\n";
# 	my $temp = <>;
# 	if ($temp > 75) {
# 		# body...
# 		print "Too Hot\n";
# 	} elsif ($temp < 68) {
# 		# else...
# 		print "Too cold\n";
# 	} elsif ($temp > 68 && $temp < 75) {
# 		print "Just Right\n";
# 	}

# }
# temperature;

sub add_nums {
	# body...
	# Add numbers entered at STDIN
	print "Enter a number (999) to quit\n";
	my $n = <>;
	#chomp (my $n=<STDIN>);
	my $sum = 0;
	while ($n != 999) {
		$sum += $n;
		chomp($n = <>);
	}
	print "The Sum is $sum\n";
}
add_nums;