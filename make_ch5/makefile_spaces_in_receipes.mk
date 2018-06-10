all : 
	@echo no\
space
	@echo no\
	space
	@echo one \
	space
	@echo one\
	 space

all1 : ; @echo 'hello \
		world'; echo "hello \
		world"

HELLO = 'hello \
world'

all2 : ; @echo $(HELLO)