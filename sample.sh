#/bin/bash

filename="bundle-1-$1" # Name of binary file.

file="samples.c"  # C file.

if [ -f $file ]
then
	gcc samples.c -o $filename
	mv $filename $JENKINS_HOME/userContent/
	echo "$filename is move in $JENKINS_HOME"
	exit 0
else
	echo "$file not found."
	exit 1
fi

