#!/bin/bash
# File: guessinggame.sh

function guessFiles
{
	endWhile=0
	filesAmt=$(ls -l | wc -l)

	while [[ $endWhile -ne 1 ]]
	do
	echo "How many files are in the current directory?"
	read filesGuess

	if [[ $filesGuess -lt $filesAmt ]]
	then
		echo "You guessed less than the total amount of files"
	fi

	if [[ $filesGuess -gt $filesAmt ]]
	then
		echo "You guessed more than the total amount of files"
	fi

	if [[ $filesGuess -eq $filesAmt ]]
	then
		echo "Congratulations! You guessed the correct amount of files! Exiting the program now."
		endWhile=1
	fi
	done
}

guessFiles

exit
