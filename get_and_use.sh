#! /bin/bash

command_name=$1

command=/usr/bin/$command_name

if [ -f $command ]
then 
    echo "$command is available, lets run it..."
else 
    echo "$command is NOT available, installing it..."
    sudo apt update && sudo apt install -y $command_name
fi

$command 