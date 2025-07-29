#!/bin/bash

# Update and install packages
sudo pacman -Suy
sudo pacman -S nodejs npm make gcc base-devel neovim go


# Neovim configs
echo "Setting up neovim"
cp -r config/nvim ~/.config/


# Aliases
echo "Setting up some useful aliases"
echo "alias la=\"ls -lA\"" >> ~/.zshrc
echo "alias rmhist=\"rm -rf ~/.zhistory\"" >> ~/.zshrc
echo "alias sd=\"rmhist && shutdown -h now\"" >> ~/.zshrc
echo "alias reboot=\"rmhist && reboot\"" >> ~/.zshrc
echo "alias exit=\"rmhist && exit\"" >> ~/.zshrc


# Git
read -p "Setup git now? <Y/n>" SETGIT
if [[ -z "$SETGIT" || "$SETGIT" = "Y" || "$SETGIT" = "y" ]]; then
	read -p "Enter your git username: " GITNAME
	if [ -n $GITNAME ]; then
		git config --global user.name "$GITNAME"
	fi


	read -p "Enter your git email: " GITMAIL
	if [ -n $GITMAIL ]; then
		git config --global user.email "$GITMAIL"
	fi

	git config --global init.defaultBranch main

fi
