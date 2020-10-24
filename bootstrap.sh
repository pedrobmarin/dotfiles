#!/bin/bash

set -xe

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
		redshift \
		redshift-gtk \
		mint-backgrounds-*

./$FNT/consolas.sh
./$THM/numix.sh
./$PGN/vundle.sh
./$PGN/tpm.sh

cp $CNF/.vimrc ~/.
cp $CNF/.tmux.conf ~/.

cp -r $CNF/.config ~/.
