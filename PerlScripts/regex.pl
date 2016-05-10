#!/usr/bin/perl


# sub regex {
# while (<>) {
# 
# if (/^(quit|exit|stop)$/i) {
# exit;
# 	}
# }
# }
# &regex;


# sub regex1 {
# 
# $text = "Here is Chait";
# $text =~ s/\w+\s\w+/There was/;
# print "$text\n";
# 
# $htmltext = "<IMG>Arsenal is the Best</IMG>";
# if ($htmltext =~ /<(\w+)>[\w\s.]+<\/\1>/i) {
# 	print "Anchor Found: $1\n"; }
# }
# &regex1;

# sub digit {
# 
# while($digit=<>) {
# if ($digit =~ /^[\d]+$/) {
# print "Yes this is a number: $digit\n";
# }
# }
# }
# &digit;

# sub count {
## Print count of matches found and replace with /s
# $text = "Hey Duuuuude";
# print ($text =~ s/u/w/g) . print "\n";
# print "$text\n";
# }
# &count;

# sub dupe {
# ##Replace Duplicate repeated Characters.
# $text = "shilllppaa";
# $text =~ tr/[a-z]//s;
# print "$text\n";
# }
# &dupe;

# sub ucase {
# # replace lowercase string with Upper Case
# $text = "arsenal";
# $text =~ s/(\w+)/uc($1)/ge;
# print "$text\n";
# }
# &ucase;

# sub blank {
# 	# removing Blank Spaces before and after
# 	$text = "      Now is the time to win Arsenal.     ";
# 	$text =~ s/^\s+|\s+$//g;
# 	print "$text\n";
# }
# &blank;

sub look_ahead {
	# Look Ahead expressions.
	# $& holds last match; $` holds string behind last match; $' holds string ahead of last match.
	$text = "Alexis Ozil Giroud ";
	while ($text =~ /\w+(?=\s)/g) {
		# body...
		print "$&\n";
		#print "$`\n";
		#print "$'\n";
	}
	
}
&look_ahead;