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
		nmap \
		nano \
		htop
case "$1" in
	gui)
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
	sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
	sudo add-apt-repository -y ppa:numix/ppa
	sudo apt-get update
	sudo apt-get install -y \
			terminator \
			vlc \
			ubuntu-wallpaper* \
			meld \
			git-cola \
			sublime-text-installer \
			unity-tweak-tool \
			numix-gtk-theme \
			numix-icon-theme-circle \
			google-chrome-stable \
			cabextract
	mkdir tmp
	cd tmp
	wget http://download.microsoft.com/download/E/6/7/E675FFFC-2A6D-4AB0-B3EB-27C9F8C8F696/PowerPointViewer.exe
	cabextract -L -F ppviewer.cab PowerPointViewer.exe
	cabextract ppviewer.cab
	if [ ! -d ~/.fonts ]; then
		mkdir ~/.fonts
	fi
	cp *.TT* ~/.fonts
	cd ..
	rm -R tmp
	;;
	*)
	;;
esac

git config --global user.email "pedrobmarin@gmail.com"
git config --global user.name "Pedro Beschorner Marin"

if [ ! -d ~/.vim/bundle/vundle ]; then
	git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
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
