#!/bin/sh

#echo "Show me the names and ages"
#echo "\n"
#cut -d"-" -f 1,3 players # -d sets new delmiter because default delimter is tab
                         # -f sets the fields we want to see  
 
cut -d"-" -f 1,3 -s players # -s surpresses the line with no delimeters 
cut -d"-" -f 1,3 -s --output-delimiter=":" players # displayed delimiter as :

#echo "Show me the Sports"
#echo "\n"                         
#cut -d"-" -f 2 players

#echo 135232 | cut -c 1,2 # show me first 2 characters 
#echo 135232 | cut -c 1-3 # show me the first 3 characters
#echo 135232 | cut -c 1,2 
