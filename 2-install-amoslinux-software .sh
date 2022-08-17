#!/bin/bash
#set -e

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

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))

echo
tput setaf 2
echo "################################################################"
echo "################### am Software to install"
echo "################################################################"
tput sgr0
echo

if grep -q amoslinux-repo /etc/pacman.conf; then

  echo
  tput setaf 2
  echo "################################################################"
  echo "################ amoslinux repos are already in /etc/pacman.conf"
  echo "################################################################"
  tput sgr0
  echo
  else
  echo
  tput setaf 2
  echo "################################################################"
  echo "################### Getting  repos for amoslinux"
  echo "################################################################"
  tput sgr0
  echo
  sh amoslinux/get-amoslinux-repos.sh
  sudo pacman -Sy
  sudo pacman -S fakeroot
fi

# install yay if not already installed
if ! command -v yay > /dev/null; then
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    rm -rf yay
fi

echo
tput setaf 2
echo "################################################################"
echo "################### Install Software"
echo "################################################################"
tput sgr0
echo

echo "Which GPU Driver you want to install?"
echo "1- NVIDIA"
echo "2- AMD"
echo "Any Key To SKIP"
read choice

if [[ "$choice" -eq 1 ]]; then
  
  echo ""
  echo "Installing NVIDIA Drivers.... "
 sh 6-nvidia.sh

elif [[ "$choice" -eq 2 ]]; then
  
  echo ""
  echo "Installing AMD Drivers.... "
  sh 7-amd.sh

else

  break 
   
fi


PKGS=(

# Browsers +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#'firefox' 
#'google-chrome'
#'Opera'
#'opera-ffmpeg-codecs'
'brave-bin'
#'chromeium'
#'vivaldi'


# Theming ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ 
'ayu-theme'
'bibata-cursor-theme-bin'
'catppuccin-gtk-theme'
'themix-full-git'
'amos-xfce-styles'
'amos-sweet-icons-git'
'amos-icon-pack-git'
'amos-plank-themes-git'
'amos-gtk-themes-git'
'halo-icons-git'
'bibata-cursor-theme'
'bibata-extra-cursor-theme'
'bibata-rainbow-cursor-theme'
'catppuccin-cursors-git'
'win10-icons-git'
'win11-icons-git'
'dracular-icons-git'
'tela-circle-icon-theme-git'
'yaru-colors-gtk-theme'
'yaru-colors-icon-theme'
'yaru-colors-wallpapers'
'yaru-gtk-theme'
'yaru-icon-theme'
'Fluent-icon-pack-git'
'fluent-themes-pack-git'
'humanity-icon-theme'
#'amos-eos-apollo-wallpapers-git'

# Fonts ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'ttf-bitstream-vera'
'ttf-dejavu'
'ttf-droid'
'ttf-hack'
'ttf-inconsolata'
'ttf-liberation'
'ttf-roboto'
'ttf-roboto-mono'
'ttf-ubuntu-font-family'
'adobe-source-sans-fonts'
'gsfonts'

# Developement ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'sublime-text-4'
'geany'
'geany-plugins'
'am-geany-config-git'
'visual-studio-code-bin'
'pycharm-community-edition'
'gitahead-bin'
'gitfind'

# Music ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'spotify'
'spotify-adblock-git'
'spotrec'
#'pragha'
#'ario'
#'ardour'
#'audacity'
#'clementine'
#'lollypop'
'mpv'
#'reaper'
#'strawberry'
'soundconverter'

# Terminals ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'alacritty'
'xfce4-terminal'
#'deepin-terminal'
#'kitty'
#'terminator'
#'tilda'
#'tilix'
#'rxvt-unicode'

# Utilities +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'file-roller'
'font-manager'
'galculator'
'gparted'
'grub-customizer'

# Gaming Related ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

'proton-ge-custom-bin'
'protonup-git'
'proton-community-updater'
'steam'
'steam-fonts'
'steam-tweaks'
'steam-native-runtime'
'goverlay-bin'
#'bottles'
'gamemode'
'lib32-gamemode'
#'lutris'
#'wine-staging'
#'winetricks'
#'playonlinux'

# Internet ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'discord'
'telegram-desktop'
'skypeforlinux-stable-bin'

# Kernels
'linux-zen'
'linux-zen-headers'

# Printer related +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'cups'
'cups-pdf'
'ghostscript'
'gutenprint'
'gtk3-print-backends'
'libcups'
'system-config-printer'
'samsung-unified-driver-common'
'samsung-unified-driver-printer'
'samsung-unified-driver-scanner'

# Multimedia ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'asciinema'
'simplescreenrecorder'
'obs'
'gimp'
'gpick'
'cava'
'inkscape'
'simple-scan'
'guvcview'

# Utils +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

'archiso'  
'appstream'
'aic94xx-firmware'
'arandr'
'avahi'
'baobab'
'bash-completion'
'bat'
'catfish'
'conky-lua-archers-git'
'cpuid'
'curl'
'dmenu'
'downgrade'
'duf'
'evince'
'expac'
'feh'
'git'
'gtop'
'gvfs-smb'
'gnome-disk-utility'
'hardinfo-gtk3'
'hddtemp'
'htop'
'hw-probe'
'imagewriter'
'kvantum'
'linux-firmware-qlogic'
'logrotate'
'lolcat'
'lshw'
'man-db'
'man-pages'
'meld'
'mintstick-git'
'most'
'neofetch'
'network-manager-applet'
'networkmanager-openvpn'
'paru-bin'
'pcmanfm-gtk3'
'pavucontrol'
'playerctl'
'plank'
'polkit-gnome'
'python-pywal'
'pv'
'qbittorrent'
'rate mirrors-bin'
'ripgrep'
'rsync'
'scrot'
'sparklines-git'
'speedtest-cli-git'
'squashfs-tools'
'time'
'the_platium_sercher-bin'
'the_silver_searcher'
'tree'
'vlc'
'wd719x-firmware'
'wgwt'
'xdg-user-dirs'
'xorg-kill'
'yay-bin'
'zsh'
'zsh-completions'
'zsh-syntax-highlighting'
'sane'
'gzip'
'p7zip'
'unace'
'unrar'
'unzip'
'menulibre'
'mugshot'
'xfce4-genmon-plugin'
'xfce4-mpc-plugin'
'etcher-bin'
'peazip'
'libpamac-aur'
'pamac-aur'
'amos-alacritty-config-git'
'amos-xfce4-git'
'amos-pywal-conky-git'
'amos-dconf-git'
'am-kdocker-config-git'
'amos-config-git'
'amos-neofetch-config-git'
'amos-bin-git'
'amos-glava-config-git'
'amoslinux-root-git'
'amos-pixmaps-git'
'amos-panel-profiles-git'
'xfce4-panel-profiles'
'zsh-theme-powerlevel10k-git'
'ttf-meslo-nerd-font-powerlevel10k'
'kdocker'
'kshutdown'
'patool'
'xscreensaver'
'imagewriter'

# Office ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
'libreoffice-fresh'
'ttf-wps-fonts'
'wps-office'
'wps-office-mime'

  )

for PKG in "${PKGS[@]}"; do
    echo "INSTALLING ${PKG}"
    yay -S "$PKG" --noconfirm --needed
done

sudo systemctl enable avahi-daemon.service
sudo systemctl enable ntpd.service

echo
tput setaf 2
echo "################################################################"
echo "################### Done"
echo "################################################################"
tput sgr0
echo
