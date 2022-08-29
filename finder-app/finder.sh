#!/bin/sh
# Homework script for assignment 1
# Author: Eddie Rojas

if test $# -ne 2; then
	echo "ERROR: Invalid Number of Arguments should be 2; found $#"
	echo "	1) File directory"
	echo "	2) String search pattern"
	return 1;
else
	filesdir=$1;
	searchstr=$2;
 	if test -d $filesdir; then
 		#x=$(find "$filesdir" -name "$searchstr" | grep -c '^')

 		#x=$(ls -l | wc -l)
 		x=$(find $filesdir -type f | wc -l)
 		
 		y=$(grep -rnw $filesdir -e $searchstr | grep -c '^')
 		#y=$(grep -rnw $filesdir -e $searchstr | wc -l)
 		echo "The number of files are $x and the number of matching lines are "$y""
 		
 	else
 		echo "ERROR: directory does not exist"
 		return 1;
 	fi
fi

exit 0;


