#!/bin/bash
#set -e

echo
tput setaf 2
echo "################################################################"
echo "################### Screenshot settings to install"
echo "################################################################"
tput sgr0
echo
#echo "Making sure gnome-screenshot saves in jpg - smaller in kb"

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

cd $installed_dir/settings/gnome-screenshot
sh set-gnome-screenshot-to-save-as-jpg.sh


echo
tput setaf 2
echo "################################################################"
echo "################### Screenshot settings installed"
echo "################################################################"
tput sgr0
echo