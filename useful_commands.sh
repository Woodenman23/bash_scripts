#!/usr/bin/env bash

echo "now"
n=10

sleep $n # sleep n seconds
echo "$n seconds later"

echo -e "\nWhat is your name?"
read -r name
sleep 1
echo "Hi, $name!"

