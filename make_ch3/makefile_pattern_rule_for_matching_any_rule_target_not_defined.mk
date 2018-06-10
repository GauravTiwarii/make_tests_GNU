foo: 
	echo i am foo;
%: force 
	echo @$(MAKE)
	@$(MAKE) -f $@;

force: ;