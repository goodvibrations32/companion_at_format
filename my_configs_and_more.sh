#!/bin/bash

#Add my repo to a folder in the new installation tree
mkdir ~/my-settings
git clone --depth 1 https://gitlab.com/goodvibrations32/dtos_dot_experiment.git ~/my-settings
git checkout local
cp -r .config/ ~/.config
cp -r .xmonad/ ~/.xmonad
cp -r .doom.d/ ~/.doom.d
cp -r Pictures/ ~/Pictures
cp .bashrc ~/.bashrc
