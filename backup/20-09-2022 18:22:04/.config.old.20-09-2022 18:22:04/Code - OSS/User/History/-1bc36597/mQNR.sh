#!/bin/bash

# We start by creating a backup of the files
backup_time = $(date '+%d-%m-%Y %H:%M:%S')
mkdir "./backup/${backup_time}"
for file in ./dotfiles/*; do
    echo "$file"
done

# Script for copying config files in this repository 
# Use -T option on cp to overwrite directories
cp -rT "$HOME/.i3" dotfiles/.i3
cp -rT "$HOME/.config" dotfiles/.config
cp -rT "$HOME/.zshrc" dotfiles/.zshrc 
cp -rT "$HOME/.gitconfig" dotfiles/.gitconfig