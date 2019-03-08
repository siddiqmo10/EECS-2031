#!/bin/sh

if [ ! $# -eq 4 ]
then
	echo "Wrong Arguments"
	exit 0
else
	if [ "$3" = "-check" ]
	then
		while read -a line || [ -n "$line" ]
		do
			if [[ ${line[1]} -lt $4 ]]
			then
				while read id price address || [[ -n "$id" && -n "price" && -n "address" ]]
				do	
					if [ "${line[0]}" = "$id" ]
					then
						echo ${line[0]} ${line[1]} $address 
						break
					fi
				done <$2
			fi		
		done <$1
		
	elif [ "$3" = "-show" ]
	then
		while read -a line || [ -n "$line" ]
		do
			if [ "${line[0]}" = "$4" ]
			then
				while read id price address || [[ -n "$id" && -n "price" && -n "adress" ]]
				do
					if [ "$id" = "$4" ]
					then
						echo "$(echo "${line[1]} * $price" | bc)"
						#echo "$cost"
					fi	
				done <$2
			fi	
	
		done <$1
	fi
fi
