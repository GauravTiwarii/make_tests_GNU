extradeps=
objects = just_prerequisites

$(objects) : $(extradeps)
	echo $^

$(extradeps): ; 