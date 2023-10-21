#!/usr/bin/bash

# HOME=/home/toro
cd "$HOME"

selected=$(find "$HOME"/scripts/* | rofi -dmenu -p "Run: ") && bash "${selected}"
