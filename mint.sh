#!/bin/bash

set -xe

APL=applications
CNF=configurations
THM=themes
FNT=fonts
PGN=plugins

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

./$APL/atom.sh
./$APL/chrome.sh
./$APL/spotify.sh
./$APL/steam.sh
./$FNT/consolas.sh
./$THM/numix.sh
./$PGN/vundle.sh
./$PGN/tpm.sh

mkdir -p ~./config/terminator

cp $CNF/vim ~/.vimrc
cp $CNF/tmux ~/.tmux.conf
cp $CNF/git ~/.gitconfig
cp $CNF/terminator ~/.config/terminator/config
