#!/bin/bash
#set -e

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

	echo
	tput setaf 2
	echo "################################################################"
	echo "################### We are on EOS"
	echo "################################################################"
	tput sgr0
	echo

		

		echo "Changing the whiskermenu"
		echo
		cp $installed_dir/settings/eos/whiskermenu-1.rc ~/.config/xfce4/panel/whiskermenu-1.rc
		sudo cp $installed_dir/settings/eos/whiskermenu-1.rc /etc/skel/.config/xfce4/panel/whiskermenu-1.rc
		
		cp $installed_dir/settings/eos/.face ~/.face
		sudo cp $installed_dir/settings/eos/.face /etc/skel/.face

		




		
