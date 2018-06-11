define frobnicate = 
@echo "fronbnicating target $@"
# it will not echo the first command
frob-step-1 $< -o $@-frob-step-1
frob-step-2 $@-step-1 -o $@
endef

frob.out: frob.in
	@$(frobnicate)
	#it will not echo any command from frobnicate
