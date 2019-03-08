#!/bin/sh

if [ ! $# -eq 2 ]
then
     echo "need 2 arguments"
     exit 
fi

if [ -d $1 -o -d $2 ]
then 
     echo "No directories please"
     exit 
fi

if [ ! -f $1 -a ! -f $2 ]
then 
    echo "$1: no such file"
    echo "$2: no such file"
    exit 

elif [ ! -f $2 ]
then 
    echo "$2: no such file"
    exit

elif [ ! -f $1 ]
then 
    echo "$1: no such file"
    exit
fi

if [ -f $1 -a -f $2 ]
then

diff $1 $2 &>/dev/null // surpess the output of diff
if [ $? -eq 0 ]
then
    echo "The two files are identical"
else
    echo "The two files are different"
fi
fi
