#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper qw(Dumper);

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

# sub add_nums {
# 	# body...
# 	# Add numbers entered at STDIN
# 	print "Enter a number (999) to quit\n";
# 	my $n = <>;
# 	#chomp (my $n=<STDIN>);
# 	my $sum = 0;
# 	while ($n != 999) {
# 		$sum += $n;
# 		chomp($n = <>);
# 	}
# 	print "The Sum is $sum\n";
# }
# add_nums;

# sub reverse_array {
# 	# body...
# 	#Read in a list of string on seperate lines
# 	#Print in reverse without using reverse

# 	print "Enter the string to see the reverse of that string\n";
# 	my @strings = <>;
# 	while (@strings) {
# 		print pop @strings;
# 	}	
# }
# reverse_array;


sub square_table {
	## Capture the Square of itself
	my @number = (0 .. 32);
	foreach my $x (@number) {
		my $square = $x * $x;
		print "$x \t $square\n";
	}
}
print "Number \t SqofNumber\n";
square_table;