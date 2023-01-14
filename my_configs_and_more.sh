#!/bin/bash

#Add my repo to a folder in the new installation tree
mkdir ~/my-settings
git clone https://gitlab.com/goodvibrations32/dtos_dot_experiment.git ~/my-settings

# Add dissertation doc and code projects
mkdir ~/dissertation
# Document in org mode
git clone https://gitlab.com/goodvibrations32/org-docs.git ~/dissertation
# Python code
git clone https://github.com/goodvibrations32/diss.tn.filtering-wind.py.git ~/dissertation

cd ~/my-settings
git checkout local
cp -r .config/ ~/
cp -r .xmonad/ ~/
# cp -r .doom.d/ ~/
cp -r Pictures/ ~/
cp .bashrc ~/.bashrc

cd ~/
.emacs.d/bin/doom sync
# /usr/bin/emacs --deamon
