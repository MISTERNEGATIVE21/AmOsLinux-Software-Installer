#!/bin/bash
#tput setaf 0 = black 
#tput setaf 1 = red 
#tput setaf 2 = green
#tput setaf 3 = yellow 
#tput setaf 4 = dark blue 
#tput setaf 5 = purple
#tput setaf 6 = cyan 
#tput setaf 7 = gray 
#tput setaf 8 = light blue
##################################################################################################################

git clone https://aur.archlinux.org/yay-bin.git /tmp/yay-bin
cd /tmp/yay-bin
makepkg
sudo pacman -U yay-bin*.zst --noconfirm
yay -S archlinux-tweak-tool-git --noconfirm

tput setaf 2
echo "##################################################################################"
echo "###################                   DONE                    ####################"
echo "##################################################################################"
tput sgr0



