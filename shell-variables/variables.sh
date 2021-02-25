#!/bin/bash





MAX=2048
SIZE=9922
FNAME=/tmp/scratch/yyy

export FNAME
export SIZE
export MAX


#Separating Variable Names from Surrounding Text

#Use the full syntax for a variable reference, 
#which includes not just the dollar sign, but also braces around the variable name

for FN in 1 2 3 4 5
do
    echo 'indes is : '${FN}
done


#Exporting Variables:
#Export variables that you want to pass on to other scripts:
# If you want to see a list of all the exported variables, just type the command env (or
# use the builtin export -p ) for a list of each variable and its value.
export NAME="bmw123"
#VAL=$(anotherscript)



#Using Parameters in a Shell Script
# simple shell script
echo "$1"



#The source command reads and executes commands from the file specified as its argument 
#in the current shell environment. It is useful to load functions, variables, and configuration files into shell scripts.
#lets source the current script :
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#printf ${BASH_SOURCE[0]}
echo "$DIR"
DIR+="/variables.sh"
echo "$DIR"
# source /home/nadav/automation-with-bash/shell-variables/variables.sh

# RES= ""
# RES+=DIR
# printf "RES  %s \n" $RES
#printf "RES : %S \n" $RES

 



