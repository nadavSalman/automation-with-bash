#!/bin/bash
# nadav@black-kiti:~/automation-with-bash/streams$ ./detecting-redirection.sh $(< dumy.txt)
# Username: dumy
# stdin coming from keyboard

echo "Username: $1";

if [ -t 0 ]; then

  echo stdin coming from keyboard
 
else

  echo stdin coming from a pipe or a file
 
fi