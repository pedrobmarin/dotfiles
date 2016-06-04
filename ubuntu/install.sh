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
		nmap
case "$1" in
	gui)
	sudo add-apt-repository -y \
			ppa:webupd8team/sublime-text-3 \
			ppa:numix/ppa
	sudo apt-get update
	sudo apt-get install -y \
			terminator \
			vlc \
			ubuntu-wallpaper* \
			meld \
			git-gui \
			sublime-text-installer \
			unity-tweak-tool \
			numix-gtk-theme \
			numix-icon-theme-circle
	;;
	*)
	;;
esac

git config --global user.email "pedrobmarin@gmail.com"
git config --global user.name "Pedro Beschorner Marin"

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cd ../config
cp vim ~/.vimrc
cp tmux ~/.tmux.conf
case "$1" in
	gui)
	cp terminator ~/.config/terminator/config
	;;
	*)
	;;
esac
