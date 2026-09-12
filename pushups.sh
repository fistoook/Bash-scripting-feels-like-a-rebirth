#!/bin/bash

echo "Welcome to your workout buddy"
echo "How many sets of pushups will you do?"
read sets

echo "How many pushups per set?"
read amount

i=1

while [[ $i -le $sets ]]
do
  read -p "Pushup $amount times: Press enter to conitnue"
  (( i ++ ))
done
echo "Congrats, nice work!"
