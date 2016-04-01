#!/bin/bash

set -xe

sudo apt-get update
sudo apt-get install -y wget vim tmux git ssh tree curl bash-completion
case "$1" in
	gui)
	sudo apt-get install -y terminator vlc ubuntu-wallpaper*
	;;
	*)
	;;
esac

git config --global user.email "pedrobmarin@gmail.com"
git config --global user.name "Pedro Beschorner Marin"
git config --global diff.tool = "vimdiff"
git config --global merge.tool = "vimdiff"

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
