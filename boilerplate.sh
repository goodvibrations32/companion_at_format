#!/usr/bin/bash
#
#     _                                 
#    | |                                
#    | |     ___  __ _  __ _  ___ _   _ 
#    | |    / _ \/ _` |/ _` |/ __| | | |
#    | |___|  __/ (_| | (_| | (__| |_| |
#    |______\___|\__, |\__,_|\___|\__, |
#                 __/ |            __/ |
#                |___/            |___/ 
#      __            __   __               
#     / _|           \ \ / /               
#    | |_ ___  _ __   \ V / ___  _ __ __ _ 
#    |  _/ _ \| '__|   > < / _ \| '__/ _` |
#    | || (_) | |     / . \ (_) | | | (_| |
#    |_| \___/|_|    /_/ \_\___/|_|  \__, |
#                                     __/ |
#                                    |___/ 
#
# ==============================================================================
# ============= !!!!! make the connection to monitors easy !!!!! ===============
# ==============================================================================

PURPLE="\033[0;35m"
YELLOW="\033[0;33m"
BOLDYELLOW="\e[1;${YELLOW}"

RED="\033[0;31m"
BOLDRED="\e[1;${RED}"

GREEN="\033[0;32m"
BOLDGREEN="\e[1;${GREEN}"

END_COLOR="\033[0m"

ext_mon=$(xrandr |
           grep --color=auto "HDMI" |
           awk '{if ($1 ~ "HDMI") print$1}' |
           awk 'NR==1{print$1}')

inter_mon=$(xrandr | grep --color=auto "eDP" | awk '{if ($1 ~ "eDP") print$1}' | awk 'NR==1{print$1}')

reshome_crete=$(xrandr |
          grep --color=auto "1680" |
          awk ' {if ($1 ~ "1680") print$1}' |
          awk 'NR==1{print$1}')

reschr=$(xrandr |
          grep --color=auto "1680" |
          awk ' {if ($1 ~ "1680" ) print$1}' |
          awk 'NR==1{print$1}')
ires=$(xrandr |
          grep --color=auto "1680\|1920" |
          awk 'NR<=10 {if ($1 ~ "1680" || $1 ~ "1920") print$1}'|
          awk 'NR==1, NR==4')

while getopts "phiw" flag; do
    case $flag in
        p)
            xrandr --output "${ext_mon}" --mode "${reshome_crete}" --left-of eDP-1-1 --primary
            sleep 3
            xmonad --restart
            sleep 2
            nitrogen --restore
            echo "${reshome_crete}"
            ;;
        w)
            xrandr --output "${ext_mon}" --mode "${reschr}" --above eDP-1-1 --primary
            sleep 3
            xmonad --restart
            sleep 2
            nitrogen --restore
            echo "${reschr}"
            ;;
        i)
            echo -e "${PURPLE}============================================="
            echo -e "${END_COLOR}"
            echo -e "${BOLDRED}External screen name: ${ext_mon}"
            echo -e "${BOLDRED}Internal screen name: ${inter_mon}"
            echo -e "${END_COLOR}"
            echo -e "${PURPLE}============================================="
            echo -e "${END_COLOR}"
            echo -e "${BOLDYELLOW}${ires}"
            echo -e "${END_COLOR}"
            echo -e "${PURPLE}=============================================${END_COLOR}"
            echo -e "${BOLDGREEN}"
            eval xrandr --listmonitors
            echo -e "${END_COLOR}"
            ;;
        h)
            echo -e "${BOLDRED}Help: -p for crete home || -l for work || -i for info on what we found"
            ;;
        \?)
            echo "Invalid flag given !!"
            ;;
    esac
done

if [ "${OPTIND}" == 1 ]; then
    eval boil -p
fi
