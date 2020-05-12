#!/usr/bin/env bash
# guessinggame.sh
# Peer graded Assignment for  THE UNIX WORKBENCH COURSE(Coursera)
# Author : Ravi Teja

# Counting the no of files present
file_count=$(ls -1 | wc -l)

#One Function
#Function  to check the  input from the user
function check_guess {
	#one if statement
	#Checking if 1st arg is less than 2nd argument
	if [[ $1 -lt $2 ]]
	then
		echo "Woah that's High!"
	#Checking if 1st arg is greater than 2nd argument
	elif [[ $1 -gt $2 ]]
	then
		echo "Ahh that's Low!"
	#leftover condition is the equal condition
	else
		echo "Great You guessed it Right!"
	fi
}

#One Loop
#Repeat the loop until the user's input is not equal to the Actual no of Files
while [[ $file_count -ne $guess ]]
do
	#read the Input from the user into guess var
	read -p "Guess How many files are there in the Current Directory? " guess
	#Displaying the response from the function
	echo $(check_guess $file_count $guess)
	#To print a new line
	echo ""
done
