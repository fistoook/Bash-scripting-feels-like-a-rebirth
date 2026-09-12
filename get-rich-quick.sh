#!/bin/bash

echo "Hello. I am a witch. I will tell you when will you become a millioner."
sleep 5

echo "First, what is your name?"
read name

random=$RANDOM
random_age=$(( random % 14 ))
sleep 2

echo "Alright, how young are you?"
read age

getrich=$(( random_age + age ))
sleep 2

echo "hmm... so you are $name and you are $age years of age..."
echo "you will become rich at $getrich"
