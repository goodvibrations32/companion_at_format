#!/bin/bash

echo
echo "###################################################################"
echo "################## Getting the settings from gitlab"
echo "###################################################################"
echo

#Add my repo to a folder in the new installation tree
mkdir ~/my-settings
git clone https://gitlab.com/goodvibrations32/dtos_dot_experiment.git ~/my-settings

echo
echo "###################################################################"
echo "################## Getting the dissertation stuff"
echo "###################################################################"
echo

# Add dissertation doc and code projects
mkdir ~/dissertation/doc
# Document in org mode
git clone https://gitlab.com/goodvibrations32/org-docs.git ~/dissertation/doc

echo
echo "###################################################################"
echo "################## Getting the code for my diss"
echo "###################################################################"
echo

# Python code
mkdir ~/dissertation/code
git clone https://github.com/goodvibrations32/diss.tn.filtering-wind.py.git ~/dissertation/code

echo
echo "###################################################################"
echo "################## Build vanilla doom"
echo "###################################################################"
echo

cd ~/
.emacs.d/bin/doom sync

echo
echo "###################################################################"
echo "################## Setting up the files"
echo "###################################################################"
echo

cd ~/my-settings
git checkout local
cp -r .config/ ~/
cp -r .xmonad/ ~/
cp -R .doom.d/* ~/.config/doom
cp -r Pictures/ ~/
cp .bashrc ~/.bashrc

echo
echo "###################################################################"
echo "################## Build my configs doom with hope"
echo "###################################################################"
echo

cd ~/
.emacs.d/bin/doom sync
# /usr/bin/emacs --deamon
exec reboot
