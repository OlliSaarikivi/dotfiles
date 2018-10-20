#!/bin/bash
ROOT=`dirname $0`
sudo apt-get update -y
sudo apt-get install -y fish stow git tmux neovim curl
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
for d in $ROOT/*/ ; do
    stow "$d"
done
if [ "$SHELL" != `which fish` ]; then
    chsh -s `which fish`
fi
