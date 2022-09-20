#!/bin/bash

# We start by creating a backup of the files

# Script for copying config files in this repository 
# Use -T option on cp to overwrite directories
cp -rT "$HOME/.i3" .i3
cp -rT "$HOME/.config" .config
cp -rT "$HOME/.zshrc" .zshrc 
cp -rT "$HOME/.gitconfig" .gitconfig