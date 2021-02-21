#!/bin/bash




#Separating Variable Names from Surrounding Text

#Use the full syntax for a variable reference, 
#which includes not just the dollar sign, but also braces around the variable name

for FN in 1 2 3 4 5
do
    echo 'indes is : '${FN}
done


#Exporting Variables:
#Export variables that you want to pass on to other scripts:
export MYVAR
export NAME=value



#Using Parameters in a Shell Script
# simple shell script
echo $1





