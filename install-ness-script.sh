#!/bin/bash

# Update the needed iso after clean install
sudo pacman -Syyu --noconfirm --needed

# Download softwear and deps
sudo pacman -S --noconfirm --needed alacritty
sudo pacman -S --noconfirm --needed alacritty-themes
sudo pacman -S --noconfirm --needed nitrogen
sudo pacman -S --noconfirm --needed rofi
sudo pacman -S --noconfirm --needed discord
sudo pacman -S --noconfirm --needed firefox
sudo pacman -S --noconfirm --needed signal-desktop
sudo pacman -S --noconfirm --needed xmonad
sudo pacman -S --noconfirm --needed emacs
sudo pacman -S --noconfirm --needed ripgrep
sudo pacman -S --noconfirm --needed fd
sudo pacman -S --noconfirm --needed gnuplot
sudo pacman -S --noconfirm --needed xmobar

#Install languages
sudo pacman -S --noconfirm --needed python
sudo pacman -S --noconfirm --needed jupyter

# Making the doom magic with my setup
# git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
# ~/.emacs.d/bin/doom install

# Make the next script executable and run it
chmod +x my_configs_and_more.sh
./my_configs_and_more.sh
