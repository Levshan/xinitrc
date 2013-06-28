#!/bin/bash

export BROWSER=/usr/bin/chromium.sh
setxkbmap -option "grp:lwin_switch" "us,hr"
pidgin &
thunderbird &
xautolock -time 10 -locker slock &
numlockx
nm-applet &
laditray &
ladish_control sload meka && ladish_control sstart && a2j_control ehw && a2j_control start &
owncloud &
urxvt -e tmux attach &

exec awesome
