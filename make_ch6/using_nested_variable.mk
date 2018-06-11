# x = y
# y = z
# a := $($(x))

# all: ; @echo $(a);

# x = $(y)
# y = z
# z = Hello
# a := $($(x))

# all: ; @echo $(a);

x = variable1
variable2 := Hello
y = $(subst 1,2,$(x)) #substitues 1 to 2 in $(x)
z = y
a := $($($(z)))

all: ; @echo $(variable2)