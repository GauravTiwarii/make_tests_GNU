#recursive expansion
foo := $(bar)
bar := $(ugh)
ugh := Huh?

all: ; @echo $(foo) #no value is assigned


x := foo
y := $(x) bar
x := later

all1: ; @echo $(y)

dir := /foo/bar     #directory to put the frobs in
all2: ; @echo $(dir)/file #trailing spaces are still there.
#only prefix spaces are removed
