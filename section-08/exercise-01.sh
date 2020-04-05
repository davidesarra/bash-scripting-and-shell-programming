#!/bin/bash

# Exercise 1
# Write a shell script that displays one random number to the screen and also
# generates a syslog message with that random number. Use the "user" facility
# and the "info" facility for your messages.

RANDOM_NUMBER=$RANDOM
echo $RANDOM_NUMBER
logger -p user.info $RANDOM_NUMBER
