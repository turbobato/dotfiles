#! /bin/bash
if [[ -e "$HOME/.oh-my-zsh" ]]; then
	echo "oh-my-zsh is already installed for $(whoami)"
else
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
	# run silently with --unattended
fi