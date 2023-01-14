#!/bin/bash

echo
echo "###################################################################"
echo "################## Start an update and download the important stuff"
echo "###################################################################"
echo

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
sudo pacman -S --noconfirm --needed xmonad-contrib
sudo pacman -S --noconfirm --needed xmonad
sudo pacman -S --noconfirm --needed emacs
sudo pacman -S --noconfirm --needed ripgrep
sudo pacman -S --noconfirm --needed fd
sudo pacman -S --noconfirm --needed gnuplot
sudo pacman -S --noconfirm --needed xmobar

sudo pacman -S --noconfirm --needed htop
sudo pacman -S --noconfirm --needed thunar
sudo pacman -S --noconfirm --needed vim

#Install languages
sudo pacman -S --noconfirm --needed python
sudo pacman -S --noconfirm --needed pip
sudo pacman -S --noconfirm --needed jupyter-notebook
sudo pacman -S --noconfirm --needed texlive-bin

echo
echo "###################################################################"
echo "################## Installing doom emacs, using the red pill"
echo "###################################################################"
echo

# Making the doom magic with my setup
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
~/.emacs.d/bin/doom install

echo
echo "###################################################################"
echo "################## Making the config script executable and run"
echo "###################################################################"
echo

# Make the next script executable and run it
chmod +x my_configs_and_more.sh
./my_configs_and_more.sh
