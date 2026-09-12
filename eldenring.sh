#!/bin/bash

user=$(whoami)

# welcome banner
echo "#### Welcome To Elden Ring ####"
sleep 3
echo ""

# cool star animation
echo "Loading terrain..."
echo "*------"
sleep 1
echo "**-----"
sleep 1
echo "***----"
sleep 2
echo "****---"
sleep 2
echo "******-"
sleep 4
echo "*******"
echo ""

# introudction
echo "My fellow tranished, welcome to the lands between"
sleep 3
echo "it's beautiful, isn't it?"
sleep 3
echo ""
echo "Please select you starting class:
1 - Samurai
2 - Prisoner
3 - Prophet"
read class

case $class in 
	1)
		type="Samurai"
		hp=10
		attack=20
		;;
	2) 
		type="Prisoner"
		hp=20
		attack=4
		;;
	3) 
		type="Prophet"
		hp=30
		attack=4
		;;
esac

echo "Dear tranished"
sleep 2
echo "You have chosen $type"
sleep 1
echo "your damage: $attack, and you have $hp hp"
sleep 2
echo "Get ready to battle for your dear life."
sleep 3
echo ""
echo ""

# First Beast fight
echo "#### You are approaching a beast ####" 
echo " are you sure you want to continue (y/n)?"
read go_to_beast

if [[ $go_to_beast == "y" ]]; then
	echo "**** Approaching beast ****"
else 
	echo ""
	echo "**** going away ****"
	echo "* RAAAAAAAAAAR *"
	echo " AHHHHHHH HE IS FOLLOWING MEEE "
fi

echo ""
echo "#### $user, You will have to fight the beast now..! ####"
echo "Beast: pick a number between 0,1. if you guess it -  You can live. otherwise - you die."
echo "Please choose a number (0/1):"
read user_pick

beast_pick=$(( $RANDOM % 2 ))

if [[ $user_pick == $beast_pick ]]; then
	if [[ $USER == "root" || $USER == "fistook" || $USER == "john-hammond" ]]; then # have to keep other users away from time wasters!
		echo ""
		echo "BEAST VANQUISHED! congrats fellow tarnished"
		echo ""
	else
		echo "Permession denied! no playing stupid games at work."
		sleep 3
		echo "Your recorded actitvity has been reportded succefuly to your boss"
		sleep 3
		echo "sucker."
		exit 0
	fi
else
	echo ""
	echo "You Died."
	exit 0
	echo ""
fi


# Second beast fight
echo "good job buddy. for you first beast, that was a pretty nice job!"
sleep 3
echo "but do not let naivete fool you... it is about to become... Hard. Awful. Painful."
sleep 3
echo "PREPARE."
sleep 3

echo "" 
echo "#### Marget approaching ####"
sleep 2
echo "Marget: well hello dummy. you have come to play me, I see"
sleep 3
echo "Marget: nice. very nice. but you know, we play by my rules here."
sleep 4
echo "Marget: 7 second starting now. guess the number I am  thinking about"
sleep 1
echo "Pick a number between 1-10:"
read user_marget_pick
marget_pick=$(( $RANDOM % 10 ))
marget_pick=$(( $marget_pick + 1 ))
sleep 2
if [[ $user_marget_pick == $marget_pick || $user_marget_pick == "10001" ]]; then #secret 10001 attack cheetcode. dont RE me!
	echo ""
	echo "Marget.... VANQUISHED?!"
elif [[ $USER == "john-hammond"  ]]; then
	echo ""
	echo "Are you the real john hammond? (y/n):"
	read answer
	if [[ $answer == "y" ]]; then
		echo "OMG you win"
		exit 0
	else 
		echo "Identity impersanation is illegal. please change your user account to YOUR name".
		exit 1 # do not impersonate john hammond!
	fi
else
	echo ""
	echo "You Died"
	exit 0
fi
