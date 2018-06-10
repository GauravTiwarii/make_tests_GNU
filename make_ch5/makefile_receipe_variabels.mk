LIST = one two three
all:
	for i in $(LIST); do \
		echo $$i; \
	done
	@echo i am end