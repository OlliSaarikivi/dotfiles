#!/bin/bash
ROOT=`dirname $0`
sudo apt-get update -y
sudo apt-get install -y fish stow git tmux neovim curl
STOW="stow -vt $HOME"
STOW_NF="$STOW --no-folding"
$STOW_NF fish
$STOW_NF git
$STOW_NF neovim
$STOW_NF wsl
$STOW_NF tmux
$STOW base16
if [ -x "$(command -v fish)" ]; then
    sudo usermod -s `which fish` $USER
fi
if grep -q Microsoft /proc/version; then
    echo "WSL detected"
    if [ ! -f $ROOT/HELLO_PAM_FLAG ]; then
        HELLO_PAM_DIR=`mktemp -d`
        git clone https://gitlab.eecs.umich.edu/pandasa/Hello_PAM.git \
            $HELLO_PAM_DIR
        cd $HELLO_PAM_DIR
        chmod +x install.sh
        sudo ./install.sh
	touch $ROOT/HELLO_PAM_FLAG
    fi
fi
