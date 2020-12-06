#!/bin/bash
declare -a array
counter=0
each=100000
while :
do
	size=${#array[@]}
	if [[ $size -ge $1 ]]
	then
		echo "exit" >> /home/user/lab5/exitLog
		exit
	fi
	for number in 1 2 3 4 5 6 7 8 9 10
	do
		index=$size+$number-1
		array[$index]=$number
	done
	counter=$((counter+1))
done
