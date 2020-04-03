#!/bin/bash

# Exercise 6
# Write a shell script that prompts the user for a name of a file or directory
# and reports if it is a regular file, a directory, or other type of file. Also
# perform an ls command against the file or directory with the long listing
# option.

read -p "Enter path: " INPUT_PATH

if [ -d $INPUT_PATH ]
then
    DESCRIPTION="a directory"
elif [ -f $INPUT_PATH ]
then
    DESCRIPTION="a regular file"
else
    DESCRIPTION="a non-regular file"
fi

echo "Path $INPUT_PATH is $DESCRIPTION"

ls -l $INPUT_PATH
