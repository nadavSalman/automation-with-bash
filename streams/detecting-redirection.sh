#!/bin/bash


echo "Username: $1";

if [ -t 0 ]; then

  echo stdin coming from keyboard
 
else

  echo stdin coming from a pipe or a file
 
fi