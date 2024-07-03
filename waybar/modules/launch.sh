#!/bin/bash

cowsay "What Would you like to Do $USER ?"
#echo "what would you like to do?"
echo "
1  Polkit Authentication
2  Clean Package Cache
3  NDS-Hypr GitPush 󰧇 
4  NDS-Hypr GitPll 󰦿 
5  List Installed Packages
6 List Running Packages
"

# Now Getiing Input

read nds

# Working on Input
 
case $nds in

 1) 
    cowsay "You'll Need Password"
    /usr/lib/polkit-kde-authentication-agent-1

;;

2)
	cowsay "Okay it's Cleaning Time"
        cowsay " First by Pacman"
	sudo pacman -Rs $(pacman -Qdtq)
        cowsay " Now by Yay "
        yay -Sc
;;	

3)
	cowsay " NDS-Hypr GitPUSH "
	~/NDS-Hyprland/waybar/modules/ndshyprgitpush.sh
;;

4)
     cowsay " NDS-HYPR GitPULL"
    ~/NDS-Hyprland/waybar/modules/ndshyprgitpull.sh
;;

5)
    cowsay "listing Packages"
    pacman -Qe
    sleep 10m
    
;;

6)  
	ps -u "$USER"

esac

cowsay " it's Done"

sleep 5s
