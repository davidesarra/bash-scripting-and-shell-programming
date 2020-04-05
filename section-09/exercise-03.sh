#!/bin/bash

# Exercise 1
# Write a shell script that that allows a user to select an action from the
# menu. The actions are to show the disk usage, show the uptime on the system,
# and show the users that are logged into the system. Tell the user to enter q
# to quit. Display "Goodbye!" just before the script exits.

# If the user enters anything other than 1,2,3,or q,tell them that it is an
# "Invalid option."

# You can show the disk usage by using the df command. To show the uptime, use
# the uptime command. To show the users logged into the system, use the who
# command. Print a blank line after the output of each command.

while true
do
    PROMPT="1: Disk usage; 2: Uptime; 3: Logged-in users; q: QUIT; Choose: "
    read -p "$PROMPT" ACTION

    case "$ACTION" in
        1)
            df
            ;;
        2)
            uptime
            ;;
        3)
            who
            ;;
        q)
            exit 0
            ;;
        *)
            echo "Invalid option."
    esac
done
