#!/bin/bash
# install zsh and oh-my-zsh
pacman -Syu zsh
chsh -s $(which zsh) turbobato
if [[ -e "$HOME/.oh-my-zsh" ]]; then
	echo "oh-my-zsh is already installed"
else
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
	# remove env zsh at the end of the file and password prompt for chsh with this oneliner
fi"
# disable beep sound
rmmod pcspkr
echo "blacklist pcspkr" > /etc/modprobe.d/nobeep.conf
