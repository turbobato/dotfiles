#!/bin/bash
# Install zsh and oh-my-zsh
pacman -Syu zsh
chsh -s $(which zsh) "$1"
su -c "cd install_scripts; bash install_oh_my_zsh.sh" "$1"
# Disable beep sound
rmmod pcspkr
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
mkdir "/home/$1/Images/screenshots"