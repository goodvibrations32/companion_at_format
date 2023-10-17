#!/usr/bin/bash
#
#
# ========================================
# ========= make the life easyer =========
# ========================================
# crete_home=$(xrandr --output HDMI-0 --mode 1680x1050 --left-of eDP-1-1 --primary)
#
#
BAD='Officialy Fucked!!'
some=$(xrandr |
           grep --color=auto "HDMI" |
           awk '{if ($1 ~ "HDMI") print 1; else print 0;}')


# DISPLAY=$(xrandr |
#               grep --color=auto "HDMI" |
#               awk '{print $1}')
# sleep 2

if [ "${some}" -eq 1 ] ;
then
    xrandr --output HDMI-0 --mode 1680x1050 --left-of eDP-1-1 --primary
    sleep 3
    xmonad --restart
    sleep 2
    nitrogen --restore
   echo "Yeea"
else
    echo "${BAD} ~~~~No HDMI found~~~~"
fi
