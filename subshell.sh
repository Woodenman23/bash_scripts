#!/usr/bin/env bash

echo -e "\nI am in this directory: "
pwd
ls -l
echo "now I am here: "
(cd /home/joe && pwd && ls -l)
echo "Just kidding, that was just a subshell. I am in: " 
pwd
echo -e "\nNow let us compare the contents: "
diff <(ls .) <(ls /home/joe)

# subshell also useful for arithmatic 
echo $(( 4 + 3 ))

exit 0