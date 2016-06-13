#!/bin/bash

if [ $# -lt 1 ]
then
echo "Atleast one argument needed"
exit
elif [[ "$1" =~ ^[Gg]reat$ ]]
	then
	echo "Chait is $1"
else
	echo "You did not input Great"
fi