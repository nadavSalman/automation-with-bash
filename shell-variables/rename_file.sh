#!/usr/bin/env bash
# cookbook filename: suffixer
#
# rename files that end in .bad to be .bash
# The for loop will iterate over a list of filenames in the current directory that all end
# in .bad. The variable $FN will take the value of each name, one at a time. Inside the
# loop, the mv command will rename the file (move it from the old name to the new
# name). We need to put quotes around each filename in case the filename contains
# embedded spaces.


for FN in *.bad
do
    mv "${FN}" "${FN%bad}babun"
done