#!/usr/bin/bash
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
inter_mon=$(xrandr |
                 grep --color=auto "eDP" |
                 awk '{if ($1 ~ "eDP") print$1}' |
                 awk 'NR==1{print$1}')
resh=$(xrandr |
          grep --color=auto "1680" |
          awk ' {if ($1 ~ "1680") print$1}' |
          awk 'NR==1{print$1}')
ires=$(xrandr |
          grep --color=auto "1680\|1920" |
          awk 'NR<=10 {if ($1 ~ "1680" || $1 ~ "1920") print$1}'|
          awk 'NR==1, NR==4')

while getopts "phiw" flag; do
    case $flag in
        p)
            xrandr --output "${ext_mon}" --mode "${resh}" --left-of eDP-1-1 --primary
            sleep 3
            xmonad --restart
            sleep 2
            nitrogen --restore
            echo "${resh}"
            ;;
        w)
            echo "Resolution unknown"
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
            echo "Help: -p for crete home || -l for work"
            ;;
        \?)
            echo "Invalid flag given !!"
            ;;
    esac
done

if [ "${OPTIND}" == 1 ]; then
    eval boil -p
fi
