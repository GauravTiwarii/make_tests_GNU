# FOO := hello

#condition operator
FOO ?= world

all: ; @echo $(FOO)