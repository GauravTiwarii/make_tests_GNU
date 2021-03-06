a_dirs := dira dirb
1_dirs := dir1 dir2

a_files := filea fileb
1_files := file1 file2

ifeq "$(use_a)" "yes"
	a1 := a
else
	a1 := 1
endif

ifeq "$(use_dirs)" "yes"
	df := dirs
else
	df := files
endif

dirs := $($(a1)_$(df))

all: ; @echo $(dirs)


#using function in nested calls does not leads to invocation of functions : i.e.
func := 
do_sort := dsaf

ifdef do_sort
	func := sort
else
	func := strip
endif

bar := a b d g q c

foo := $(func) $(bar)

all1: ; @echo $(foo)