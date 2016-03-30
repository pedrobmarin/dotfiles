#!/bin/bash

set -xe

sudo apt-get update
sudo apt-get install -y wget vim tmux git terminator ssh tree ubuntu-wallpaper*

git config --global user.email "pedrobmarin@gmail.com"
git config --global user.name "Pedro Beschorner Marin"

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cd config
cp terminator ~/.config/terminator/config
cp vim ~/.vimrc
cp tmux ~/.tmux.conf
