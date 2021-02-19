#!/usr/bin/env bash
#
# Runnnig .sh options :
# --------------------------
# $ bash First.sh
# --------------------------
# $ chmod a+x First.sh
# $ ./First.sh


case "$-" in
    *i*) # Code for interactive shell here
     ;;
    *)   # Code for noninteractive shell here
     ;;
esac

#or

if [ -n "$PS1" ]; then
    echo This shell is interactive
else
    echo This shell is not interactive
fi


