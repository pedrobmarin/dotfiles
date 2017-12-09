#!/bin/bash

set -xe

APPS=../../apps
CONFIGS=../../configs
THEMES=../../themes
FONTS=../../fonts
PLUGINS=../../plugins

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

./$APPS/atom.sh
./$APPS/chrome.sh
./$APPS/spotify.sh
./$FONTS/consolas.sh
./$THEMES/numix.sh
./$PLUGINS/vundle.sh
./$PLUGINS/tpm.sh

cp $CONFIGS/vim ~/.vimrc
cp $CONFIGS/tmux ~/.tmux.conf
cp $CONFIGS/git ~/.gitconfig
mkdir -p ~./config/terminator
cp $CONFIGS/terminator ~/.config/terminator/config
