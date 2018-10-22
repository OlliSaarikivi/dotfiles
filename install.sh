#!/bin/bash
ROOT=`dirname $0`
cd $ROOT
sudo apt-get update -y
sudo apt-get install -y stow git tmux neovim curl
git submodule update --init --recursive
stow fish
stow base16
stow git
stow neovim
stow wsl
stow tmux
if [ "$SHELL" != `which fish` ]; then
    chsh -s `which fish`
fi
