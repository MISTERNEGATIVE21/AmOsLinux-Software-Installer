#!/bin/bash
#set -e

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

	echo
	tput setaf 2
	echo "################################################################"
	echo "################### We are on AmOsLinux"
	echo "################################################################"
	tput sgr0
	echo

		

		echo "Changing the whiskermenu"
		echo
		cp $installed_dir/settings/amoslinux/whiskermenu-1.rc ~/.config/xfce4/panel/whiskermenu-1.rc
		sudo cp $installed_dir/settings/amoslinux/whiskermenu-1.rc /etc/skel/.config/xfce4/panel/whiskermenu-1.rc
		
		cp $installed_dir/settings/amos/.face ~/.face
		sudo cp $installed_dir/settings/amoslinux/.face /etc/skel/.face

		




		
