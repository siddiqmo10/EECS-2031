#!/bin/sh

echo "Please enter a directory name"
read dname

if [ -d $dname ]; then
	cd $dname
	#ls -l | grep '^-'
	for item in *
	do
		if [ -f $item ]; then
		echo "$item"
	fi
    done
	exit 0
else 
		echo "I said a directory"
		read dname
		if [ -d $dname ]; then
		 cd $dname
		 ls -l | grep '^-'
	     exit 0
	    else
	 	 echo "You are hopeless"
	 	 exit 0
	    fi
 fi