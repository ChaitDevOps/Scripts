#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper qw(Dumper);


 sub read_file {

#Another way to print contents on file in new line
#Enter Input as comma separated and output will be in new line.
print "Enter with comma separated, Ctrl-D to quit\n";
	my @lines = <>;
	chomp(@lines) ;
	my $oldlines = join (',', @lines);
	   $oldlines =~ s/,/\n/xg;
	print $oldlines;
	

}
  read_file;

# sub read_from_file {
# 	##Print All Names on New Line.
#     local $/ = "";
#     my $filename = $ARGV[0];
#     open  my $fh, "$filename" or die $!;
#     while (<$fh>) {
#       s/\s+$//;
#       s/[\r\n]+/,/xg;
#       s/,/\n/xg;
#       print;
      
#       }  
#       close $fh; 
    
# }
# read_from_file;

# @names=(A,B,C,D,E);
# @names=join("\n", @names);
# print @names,"\n";

# sub read_file {
#       #(@names, @out);
#       @lines = <>;
#      chomp(@lines);
#      for  $line(@lines) {
#          @names = split /,/, $line;
#          for  $name (@names) {
#             push @out, $name;
#          }
#      }
#       for  $item(@out) {
#           print $item . "\n";
     
#      }
#  }

#  read_file;

# sub read_me {
# 	# body...
# 	#Accepts Input and print out in List Format.
# 	my @arr = ();
# while (<STDIN>) {
#   chomp($_);
#   last if ($_ eq '');
#   push(@arr, $_);
# }

# print Dumper(\@arr);
# foreach (@arr) {
#   printf "%s\n", $_;
# }

# printf "Number of elements in \@arr: %d\n", scalar(@arr);

# }

#read_me;
