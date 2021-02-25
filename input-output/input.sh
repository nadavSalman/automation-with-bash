#!/usr/bin/env bash


#You need to get input from the user:
# read -p "answer me this " ANSWER


# read -t 3 -p "answer quickly: " ANSWER


read -r -s -p  "password: " PASSWD
printf "%s" "$PASSWD" "/n"
export PASSWD