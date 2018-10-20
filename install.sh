#!/bin/bash
sudo apt-get install -y fish stow git nvim tmux
stow fish
stow nvim
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
chsh -s `which fish`
