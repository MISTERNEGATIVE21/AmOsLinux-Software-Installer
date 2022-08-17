#!/bin/bash
#set -e
echo
tput setaf 2
echo "################################################################"
echo "################### Autostart certain applications"
echo "################################################################"
tput sgr0
echo

[ -d $HOME"/.config/autostart" ] || mkdir -p $HOME"/.config/autostart"

sleep 1

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

cp -f $installed_dir/settings/autostart/* $HOME"/.config/autostart"


echo
tput setaf 2
echo "################################################################"
echo "################### Autostart done"
echo "################################################################"
tput sgr0
echo