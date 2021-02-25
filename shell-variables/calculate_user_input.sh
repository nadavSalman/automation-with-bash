#!/usr/bin/env bash



ARG1=$1
ARG2=$2
printf "arg1 = %d , arg2 = %d \n" $ARG1 $ARG2



for i in $@; do
    echo "$i"
done


#validates argsw :
if [ $($ARG1 / 2) -eq "1" ]
then 
    echo 'arg1 is even'
else
    echo 'arg1 is oud'
fi


