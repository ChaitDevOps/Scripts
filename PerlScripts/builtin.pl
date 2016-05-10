#!/usr/bin/perl

# sub match {
# 	$text = "LegendOfKohli";
# 	$text =~ /Of/;
# 	print "PreMatch: $` " . "Match: $& " . "PostMatch: $' " . "\n";
# }
# match;

# sub ofs {
	#$" is the output field seperator, similar is $,
# 	@arr = (1,2,3);
# 	$" = '+';
# 	$text = "@arr";
# 	print "$text\n";
# }
# ofs;

# sub irs {
# 	# body...
# 	#$/ is the Input record seperator, which is by default a new line.
# 	undef $/;
# 	open HANDLE, "employee";
# 	$text = <HANDLE>;
# 	print "$text";
# }
# irs;

# $? holds the status returned by the last pipe close, backtick or system operator.
# $@ holds the Perl Syntax error message from the last eval statement.
# $+ holds the last bracketed pattern match.

# sub testarg {
# 	# $text = <>;
# 	# print "$ARGV\n";
# 	$" = '-';
# 	print uc("@ARGV\n");
# 	print uc(reverse "@ARGV") . "\n";
# }
# testarg;

sub count_args {
	# body...
	$count = $#ARGV +  1;
	if ($count < 2) {
		print "Please Enter both FirstName \& LastName\n";
		exit;
	}
	($FirstName , $LastName) = @ARGV;
	$, = '-';
	print $FirstName,$LastName . "\n"; 
}
count_args;