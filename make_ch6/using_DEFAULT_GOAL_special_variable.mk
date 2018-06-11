#Query the default goal.
ifeq ($(.DEFAULT_GOAL),)
	$(warning no default goal is set)
endif

.PHONY: foo
foo: ; @echo $@

$(warning default goal is $(.DEFAULT_GOAL))

# Reset the default goal
.DEFAULT_GOAL :=
#after cleaning the value of .DEFAULT_GOAL,
#it will restart the deault goal selection algo
# it will pick the neext first target as default goal.

.PHONY: bar
bar: ; @echo $@

$(warning default goal is $(.DEFAULT_GOAL))

# Set our own.
.DEFAULT_GOAL := foo
