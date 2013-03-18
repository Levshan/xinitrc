#!/bin/bash

setxkbmap -option "grp:lwin_switch" "us,hr"
pidgin &
thunderbird &
hexchat &
conky &
xautolock -time 10 -locker slock &
numlockx
ario -m &
skype &

if [ "$(hostname)" == "thinker" ]; then
    nm-applet &
    mpd
elif [ "$(hostname)" == "hal9000" ]; then
    ladi-system-tray &
    ladish_control sload meka && ladish_control sstart && a2j_control ehw && a2j_control start &
fi

exec awesome
