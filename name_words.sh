#!/usr/bin/bash

# debug mode
set -x

echo -e "\n...\nType your name mortal!"
read name

for (( i=0; $i<${#name}; i++));
do
    echo -e ${name:$i:1}"oom"
done