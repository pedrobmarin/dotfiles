#!/bin/bash

set -xe

sudo apt-get update
sudo apt-get install -y \
		wget \
		vim \
		tmux \
		git \
		ssh \
		tree \
		curl \
		bash-completion \
		htop \
		terminator \
		vlc \
		meld \
		git-cola \
		synaptic \
		lxc \
		lxc-template \
		redshift \
		redshift-gtk

cd ../apps
./atom.sh
./chrome.sh
./consolas.sh
./numix.sh
./spotify.sh
./vundle.sh

cd ../config
cp vim ~/.vimrc
cp tmux ~/.tmux.conf
cp git ~/.gitconfig
mkdir -p ~./config/terminator
cp terminator ~/.config/terminator/config
