#!/bin/bash
declare -a array
counter=0
each=100000
while :
do
	size=${#array[@]}
	if [[ $counter -eq $each ]]
	then
		echo $size > report.log
	else
		if [[ $counter%$each -eq 0 && $counter/$each -ne 0 ]]
		then
			echo $size >> report.log
		fi
	fi
	for number in 1 2 3 4 5 6 7 8 9 10
	do
		index=$size+$number-1
		array[$index]=$number
	done
	counter=$((counter+1))
done
