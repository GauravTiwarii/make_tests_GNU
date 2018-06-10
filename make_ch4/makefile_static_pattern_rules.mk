objects = foo bar bao

all: $(filter %r, $(objects))
#$@ --> name of target 
#$* --> matched static matched_pattern
#$< --> all the pre-req, till now (non - repeatitive )

#STATIC PATTERN RULE
$(filter %r, $(objects)): %r: %o
	echo pre-req = $< target = $@ matched_pattern = $*

bao: 
	echo I bao