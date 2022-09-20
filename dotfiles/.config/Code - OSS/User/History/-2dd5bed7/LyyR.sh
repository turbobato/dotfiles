#!/bin/bash
# install zsh and oh-my-zsh
pacman -Syu zsh
chsh -s $(which zsh) turbobato
su -c "install_oh_my_zsh.sh" turbobato
# disable beep sound
rmmod pcspkr
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
