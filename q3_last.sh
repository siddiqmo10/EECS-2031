#!/bin/sh

echo "Enter arguments: \c"
read fname word

if [ $fname = "exit" ]; then 
	exit 0
fi

until [ $fname = "exit" ]
do

if [ -f $fname ]; then
	if ( grep -q -i -w "$word" $fname ); then
		echo "Found"
		echo "Enter arguments: \c"
		read fname word
	else
		echo "Not found"
		echo "Enter arguments: \c"
		read fname word
		
	fi
else 
	echo "No such file"
	echo "Enter arguments: \c"
	read fname word
fi
done
