#!/bin/bash

# We start by creating a backup of the files
date=$(date '+%d-%m-%Y %H:%M:%S')
mkdir "./backup/${date}"
cd dotfiles
for file in $(ls -a | grep "^\.[^\.]"); do
    echo $file
    cp -rT "$file" "../backup/${date}/${file}.old.${date}"
done
cd ..

# Script for copying config files in this repository 
# Use -T option on cp to overwrite directories
cp -rT "$HOME/.config/helix/config.toml" dotfiles/.config/helix/config.toml
cp -rT "$HOME/.i3" dotfiles/.i3
cp -rT "$HOME/.Xresources" dotfiles/.Xresources
cp -rT "$HOME/.config/picom.conf" dotfiles/.config/picom.conf
cp -rT "$HOME/.config/Code - OSS/User/settings.json" "dotfiles/.config/Code - OSS/User/settings.json"
cp -rT "$HOME/.config/i3status.conf" dotfiles/.config/i3status.conf
cp -rT "$HOME/.config/alacritty/alacritty.yml" dotfiles/.config/alacritty.yml
cp -rT "$HOME/.config/kitty" dotfiles/.config/kitty
cp -rT "$HOME/.zshrc" dotfiles/.zshrc 
cp -rT "$HOME/.gitconfig" dotfiles/.gitconfig