#!/bin/bash

cowsay "What Would you like to Do $USER ?"
#echo "what would you like to do?"
echo "
1  Polkit Authentication
2 Clean Pacman Cache
3 Htop
"

# Now Getiing Input

read nds

# Working on Input
 
if [ $nds -eq 1 ]
then 
    cowsay "You'll Need Password"
    /usr/lib/polkit-kde-authentication-agent-1

fi

if [ $nds -eq 2 ]
then	
	cowsay "Okay it's Cleaning Time"
	sudo pacman -Rs $(pacman -Qdtq)
fi	

if [ $nds -eq 3 ] 
then 
	cowsay " htop"
	htop
fi


cowsay " it's Done"

