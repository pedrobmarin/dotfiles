#!/bin/bash

set -xe

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
		meld \
		git-cola \
		redshift \
		redshift-gtk \
		mint-backgrounds-*

./$FNT/consolas.sh
./$THM/numix.sh

./$PGN/vundle.sh
./$PGN/tpm.sh

cp .vimrc ~/.
cp .tmux.conf ~/.
cp -r .config ~/.

cat .bashrc >> ~/.bashrc
