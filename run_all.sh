#!/usr/bin/bash

country=Pakistan

echo $country" is pretty great."

if [[ "$1" == "Bob" ]];
then 
    echo "Bob is here"
else
    echo "No Bob to be found"
fi 

echo "looking for your file..."

if [ -f ~/myfile ]
then
    echo "The file exists."
else
    echo "no. Generating file."
    touch ~/myfile
fi

echo "Today is " `date`

echo -e "\ntell me something"
read user_input

for ((i=0; $i<${#user_input}; i++)); 
do
    echo ${user_input:$i:1}
done




echo -e "\nCongradulations $1!, you have solved my challenge."

echo "this is some text" > output.txt

echo "this is some MORE text." >> output.txt

