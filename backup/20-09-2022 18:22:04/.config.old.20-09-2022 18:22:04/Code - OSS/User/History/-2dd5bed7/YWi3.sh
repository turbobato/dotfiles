#!/bin/bash
# Install zsh and oh-my-zsh
pacman -Syu zsh
chsh -s $(which zsh) "$1"
su -c "cd install_scripts; bash install_oh_my_zsh.sh" "$1"
# Disable beep sound
rmmod pcspkr
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
# Setup for screenshots
pacman -Syu flameshot
mkdir "/home/$1/Images/screenshots"
# Install xidlehook
git clone https://aur.archlinux.org/xidlehook.git
cd xidlehook
makepkg -si