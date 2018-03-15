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
		bless \
		terminator \
		vlc \
		meld \
		git-cola \
		synaptic \
		lxc \
		lxc-template \
		redshift \
		redshift-gtk \
		mint-backgrounds-*

./$APL/atom.sh
./$APL/chrome.sh
./$APL/spotify.sh
./$APL/steam.sh
./$FNT/consolas.sh
./$THM/numix.sh
./$THM/conky-vision.sh
./$PGN/vundle.sh
./$PGN/tpm.sh

cp $CNF/.vimrc ~/.
cp $CNF/.tmux.conf ~/.
cp $CNF/.gitconfig ~/.
cp $CNF/.conkyrc ~/.

cp -r $CNF/.config ~/.
