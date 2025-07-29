#!/bin/bash

sudo pacman -Suy
Sudo pacman -S nodejs npm make gcc base-devel neovim go

cp config/nvim ~/.config/

echo "alias la=\"ls -lA\"" >> ~/.zshrc
echo "alias rmhist=\"rm -rf ~/.zhistory\"" >> ~/.zshrc
echo "alias sd=\"rmhist && shutdown -h now\"" >> ~/.zshrc
echo "alias reboot=\"rmhist && reboot\"" >> ~/.zshrc
echo "alias exit=\"rmhist && exit\"" >> ~/.zshrc
