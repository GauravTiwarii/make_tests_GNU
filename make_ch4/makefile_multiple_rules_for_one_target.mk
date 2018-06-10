#an easy way to say that all of files have pre-requisite  \
# config.h is to : 
objects = foo.o bar.o
foo.o : defs.h
bar.o : defs.h test.h
$(objects) : config.h