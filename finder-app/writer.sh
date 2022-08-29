#!/bin/sh
# Homework script for assignment 1
# Author: Eddie Rojas

if test $# -ne 2; then
	echo "ERROR: Invalid Number of Arguments should be 2; found $#"
	echo "	1) File address"
	echo "	2) Text written to the file"
	exit 1;
else
	writefile=$1;
	writestr=$2;
 	#if test -f $writefile; then
 	#	mkdir $writefile
 	#fi
 	echo $writestr > $writefile
 	if test $? -ne 0; then
 		echo "ERROR: failed to write to the file"
 		exit 1;
	fi
fi

exit 0;


