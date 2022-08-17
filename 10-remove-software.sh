#!/bin/bash
#set -e

##################################################################################################################
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


# when on EOS - remove conflicting files

if grep -q "EndeavourOS" /etc/os-release; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "############### Removing software for EOS"
  echo "################################################################"
  tput sgr0

  if [ -f /etc/skel/.bashrc ]; then
    sudo rm /etc/skel/.bashrc
  fi

  #sudo systemctl disable firewalld
  #sudo pacman -R --noconfirm firewalld
  #sudo pacman -R --noconfirm arc-gtk-theme-eos
  sudo pacman -R --noconfirm endeavouros-skel-default endeavouros-skel-xfce4
  sudo pacman -R --noconfirm modemmanager
  sudo pacman -R --noconfirm yay-eos
  sudo pacman -R --noconfirm xfce4-screensaver

  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Software removed"
  echo "################################################################"
  tput sgr0
  echo

fi
  
# when on ARCOLINUX - remove conflicting files

if [ -f /usr/local/bin/get-nemesis-on-arcolinux ]; then
  echo
  tput setaf 2
  echo "################################################################"
  echo "#######Software to remove from an ArcoLinux installation"
  echo "################################################################"
  tput sgr0
  echo

    sudo systemctl disable tlp.service
    sudo pacman -Rs tlp --noconfirm
    sudo pacman -Rs xf86-video-ati --noconfirm
    sudo pacman -Rs xf86-video-nouveau --noconfirm
    sudo pacman -Rs xf86-video-vesa --noconfirm
	  sudo pacman -Rs arcolinux-root-git --noconfirm
		sudo pacman -Rs arcolinux-xfce-git --noconfirm
		sudo pacman -Rs arcolinux-panel-profiles-git --noconfirm
		sudo pacman -Rs vivaldi --noconfirm
		sudo pacman -Rs vivaldi-ffmpeg-codecs --noconfirm
		sudo pacman -Rs vivaldi-widevine --noconfirm
		sudo pacman -Rs arcolinux-bin-git --noconfirm
		sudo pacman -Rs arcolinux-alacritty-git --noconfirm
		sudo pacman -Rs arcolinux-conky-collection-git --noconfirm
		sudo pacman -Rs arcolinux-gtk3-sardi-arc-git --noconfirm
		sudo pacman -Rs arcolinux-plank-git --noconfirm
		sudo pacman -Rs arcolinux-plank-themes-git --noconfirm
		sudo pacman -Rs arcolinux-qt5-git --noconfirm
		sudo pacman -Rs arcolinux-termite-themes-git --noconfirm
		sudo pacman -Rs arcolinux-variety-git --noconfirm
		sudo pacman -Rs arcolinux-variety-autostart-git --noconfirm
		sudo pacman -Rs variety --noconfirm
		sudo pacman -Rs arcolinux-wallpapers-git --noconfirm
		sudo pacman -Rs arcolinux-xfce-panel-profiles-git --noconfirm
		sudo pacman -Rs arcolinux-zsh-git --noconfirm
		sudo pacman -Rs arcolinux-config-all-desktops-git --noconfirm
		sudo pacman -Rs arcolinux-dconf-all-desktops-git --noconfirm
    sudo pacman -Rs arcolinux-neofetch-git --noconfirm
		sudo pacman -Rs chromium --noconfirm
		sudo pacman -Rs urxvt-fullscreen --noconfirm
		sudo pacman -Rs urxvt-perls --noconfirm
		sudo pacman -Rs urxvt-resize-font-git --noconfirm
		sudo pacman -Rs gnome-software --noconfirm
		sudo pacman -Rs gnome-software-packagekit-plugin --noconfirm
		sudo pacman -Rs termite --noconfirm
		sudo pacman -Rs sardi-icons --noconfirm
		sudo pacman -Rs xf86-video-amdgpu --noconfirm
    sudo pacman -Rs xf86-video-fbdev --noconfirm
    sudo pacman -Rs xf86-video-openchrome --noconfirm
  
  if pacman -Qi xf86-video-vmware &> /dev/null; then
    sudo pacman -Rs xf86-video-vmware --noconfirm
  fi

  # when on Garuda - remove conflicting files

if grep -q "Garuda" /etc/os-release; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "############### Removing software for EOS"
  echo "################################################################"
  tput sgr0

  if [ -f /etc/skel/.bashrc ]; then
    sudo rm /etc/skel/.bashrc
  fi

  sudo pacman -R --noconfirm blueman
  sudo pacman -R --noconfirm garuda-xfce-settings
  sudo pacman -R --noconfirm garuda-common-settings
  sudo pacman -R --noconfirm garuda-bash-config
  sudo pacman -R --noconfirm redshift
  sudo pacman -R --noconfirm xfce4-screensaver
  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Software removed"
  echo "################################################################"
  tput sgr0
  echo

fi

  
  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Software removed"
  echo "################################################################"
  tput sgr0
  echo

fi



