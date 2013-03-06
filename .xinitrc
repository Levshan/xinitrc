#!/bin/bash

export BROWSER=/usr/bin/chrome-incognito
setxkbmap -option "grp:lwin_switch" "us,hr"
pidgin &
thunderbird &
hexchat &
conky &
xautolock -time 10 -locker slock &
numlockx
ario -m &

if [ "$(hostname)" == "meka-desktop" ]; then
    xrandr --output DisplayPort-0 --auto --output DVI-0 --auto --right-of DisplayPort-0
    skype &
    nm-applet &
    virt-manager &
    mpd
elif [ "$(hostname)" == "hal9000" ]; then
    ladi-system-tray &
    ladish_control sload meka && ladish_control sstart && a2j_control ehw && a2j_control start &
fi

exec fluxbox
