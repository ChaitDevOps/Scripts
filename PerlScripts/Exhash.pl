#!/usr/bin/perl

use warnings;
sub exhash {

#%hash = ();
$hash{Arsenal} = "Ozil";
$hash{Barcelona} = "Messi";
$hash{RealMadrid} = "Ronaldo";
$hash{Spurs} = "Kane";
%hash = (%hash, ManCity , 'David Silva');

while ( ( $key, $value ) = each %hash ) {
	print "$key => $value\n";
}
### Adding New key,value pair. 

if (exists($hash{ManUnited})) {
	print "$hash{ManUnited}\n";
} else {
	%hash = (%hash, ManUnited, 'Rooney');
	print "$hash{ManUnited}\n";
} 

if (exists($hash{spurs})) {
	delete($hash{spurs});
	print "Shit Deleted\n";
} else {
	print "Shit..oops, I meant Spurs don't exist\n";
}
print "$hash{Arsenal}\n";
print "$hash{ManCity}\n";
}

&exhash;