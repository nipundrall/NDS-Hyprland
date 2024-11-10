#!/bin/bash
# alsa-utils is required
# Getting volume level
statusLine=$(amixer get Master | tail -n 1)
status=$(echo "${statusLine}" | grep -wo "on")
volume=$(echo "${statusLine}" | awk -F ' ' '{print $5}' | tr -d '[]%')

#echo "$volume"
#volnoti-show $volume
# Getting argument {volup,voldown,volmute}

if [ $# -ne 1 ]; then
    echo "Need 1 argument (volup, voldown, volmute)"
    exit 1;
fi


# Puuting argument to use

if [ $1 = 'volup' ]; then
    msg=' 󰕾  Volume Is Going UP'
    msg2='Dont Raise Too Much Its'
elif [ $1 = 'voldown' ]; then
    msg=' 󰖀  Volume Is Going Down'
    msg2='Oh, just Mute ME! It"s just'
elif [ $1 = 'volmute' ]; then
    msg=' 󰖁  Its Dead Silence'
    msg2='OK, i wont talk'
    
fi

notify-send "$msg" "$msg2 $volume"
