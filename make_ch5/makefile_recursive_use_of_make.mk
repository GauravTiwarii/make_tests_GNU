
subsystem: clean create_subdir_and_a_make_file
	cd subdir && $(MAKE)

create_subdir_and_a_make_file:
	mkdir subdir && cd subdir && touch makefile && echo hello: \\n\\techo I am here; > makefile

.PHONY: clean create_subdir_and_a_make_file subsystem
clean:
	rm -rf subdir