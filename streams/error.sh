#!/bin/bash

#./error.sh 1> capture.txt 2> error.txt

#echoes text to the terminal window, via the stdout stream.
echo "About to try to access a file that doesn't exist"
#tries to access a file that doesn’t exist. This will generate an error message that is delivered via stderr.
cat bad-filename.txt