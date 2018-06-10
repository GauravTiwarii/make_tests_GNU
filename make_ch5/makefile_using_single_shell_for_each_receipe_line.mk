.ONESHELL:
SHELL = /usr/bin/perl
.SHELLFLAGS = -e
show : 
	# avoid using make's special characters as first char of first line of receipe
	my @f = qw(a b c); 
	print "@f\n";

#if the shell is POSIX-style shell, then there is no problem for special chars
#following works fine
.ONESHELL:
	foo : bar/lose
		@cd $(@D)
		@gobble $(@F) > ../$@
#one shell receipes only fail, if error is on last line of receipe, 
#otherwise the error is ignored
#use -e flag to overcome this issue