
clean:
	rm -f *.txt

create mae:
	touch $@.txt
	touch clean.txt
	echo i am done
print:
	echo $?