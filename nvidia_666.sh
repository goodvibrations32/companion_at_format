#!/usr/bin/bash
#
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
#

# At the time this job is handled by the kernel... if i ever want to return 
# with some X11 desktop I need to redownload optimus-manager
# Returned to Xmonad and the nvidia is loaded by the kernel as it was supposed
# to be....
# fuck wayland cant even ofload firefox to the GPU...
eval "$(optimus-manager --switch nvidia --no-confirm)"
