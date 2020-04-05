#!/bin/bash

# Exercise 1
# Write a shell script that asks the user for the number of lines they would
# like to display from the /etc/passwd file and display those lines.

FILE_PATH="/etc/passwd"

read -p "How many lines of ${FILE_PATH} would you like to see? " NUM_LINES

LINE_NUM=1
while read LINE
do
    echo "${LINE_NUM}: ${LINE}"
    ((LINE_NUM++))
    if [ $LINE_NUM -gt $NUM_LINES ]
    then
        break
    fi
done < $FILE_PATH
