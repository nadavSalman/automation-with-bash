#!/bin/bash
#
#
#


# String Length


STR1="i love banana"
echo ${#STR1}





#Substring Extraction

stringZ=abcABC123ABCabc
#       0123456789.....
#       0-based indexing.

echo ${stringZ:0}                            # abcABC123ABCabc
echo ${stringZ:1}                            # bcABC123ABCabc
echo ${stringZ:7}                            # 23ABCabc

echo ${stringZ:3:2}                          # AB
                                             # Three characters of substring.


