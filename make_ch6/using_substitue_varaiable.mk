foo := a.o b.o c.o
bar := $(foo:%.o=%.c)
sss: ; @echo $(bar)