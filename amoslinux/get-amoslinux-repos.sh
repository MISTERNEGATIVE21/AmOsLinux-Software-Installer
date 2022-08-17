#!/bin/bash
echo '

[amoslinux-repo]
SigLevel = Optional TrustedOnly
Server = https://amos-linux.github.io/$repo/$arch

[amos-3rd-party-repo]
SigLevel = Optional TrustedOnly
Server = https://amos-linux.github.io/$repo/$arch' | sudo tee --append /etc/pacman.conf
