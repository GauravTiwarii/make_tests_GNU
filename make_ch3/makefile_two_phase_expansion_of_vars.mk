.SECONDEXPANSION:
	onefile = oadfa
	ONEVAR = $(onefile)
	TWOVAR = $$(onefile)
	onefile = adfasf
myfile: 
	echo I am done
	echo $(ONEVAR)
	echo $$(TWOVAR)
