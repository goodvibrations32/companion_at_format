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
echo "################## The agenda for DOOM"
echo "###################################################################"
echo

mkdir ~/org
git clone https://github.com/goodvibrations32/agenda.git ~/org

echo
echo "###################################################################"
echo "################## Build my configs doom with hope"
echo "###################################################################"
echo

cd ~/
.emacs.d/bin/doom sync
# /usr/bin/emacs --deamon
exec reboot
