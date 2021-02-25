#!/bin/bash



#The source command reads and executes commands from the file specified as its argument 
#in the current shell environment. It is useful to load functions, variables, and configuration files into shell scripts.
#lets source the current script in order to get for the curent shell the init variables:
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#printf ${BASH_SOURCE[0]}
echo "$DIR"
DIR+="/source-curent-script.sh"
echo "$DIR"
#source $DIR