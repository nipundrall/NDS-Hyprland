#!/bin/bash

echo "What Would you like to Do?
1  Polkit Authentication
2 Firefox
3 Htop

"

# Now Getiing Input

read nds

# Working on Input
 
if [ $nds -eq 1 ]
then 
    echo "You'll Need Password"
    /usr/lib/polkit-kde-authentication-agent-1

fi

if [ $nds -eq 2 ]
then	
	echo "Okay it's Updating"
	firefox
fi	

if [ $nds -eq 3 ] 
then 
	echo " htop"
	htop
fi


