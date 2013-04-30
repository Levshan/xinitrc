#!/bin/bash

export BROWSER=/usr/bin/chromium.sh
setxkbmap -option "grp:lwin_switch" "us,hr"
pidgin &
thunderbird &
hexchat &
xautolock -time 10 -locker slock &
numlockx
ario -m &
nm-applet &
ladi-system-tray &
ladish_control sload meka && ladish_control sstart && a2j_control ehw && a2j_control start &

exec awesome
