#!/bin/bash


echo
echo "###################################################################"
echo "################## Run dtos script"
echo "###################################################################"
echo

cd ~/companion_at_format/dtos
./dtos

echo
echo "###################################################################"
echo "################## Making the config script executable and run"
echo "###################################################################"
echo

cd ..
# Make the next script executable and run it
chmod +x my_configs_and_more.sh
./my_configs_and_more.sh

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
echo "################## Build my configs doom with hope"
echo "###################################################################"
echo

cd ~/
.emacs.d/bin/doom sync
# /usr/bin/emacs --deamon
exec reboot
