SHELL = /bin/bash

all: README.md

README.md:
	touch README.md
	echo "This is a **README.md** file created from a _**makefile**_." >> README.md
	echo "" >> README.md
	echo "Title of Project: **guessinggame.sh**" >> README.md
	echo "" >> README.md
	echo "Date and Time make was run: _$(shell history | grep make | date)_" >> README.md
	echo "" >> README.md
	echo "Number of lines of code contained in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
	echo "" >> README.md

clean:
	rm README.md
