.SECONDEXPANSION:

foo: foo1 bar1.1 $$^ $$*
	echo $*;

foo1: bar2.2 for3.2 $$+
	echo $+;

bar2.2: ;
for3.2: ;
bar1.1: ;