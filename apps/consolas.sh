#!/bin/bash

set -xe

sudo apt-get install -y \
		wget
		cabextract

mkdir -p /tmp/fonts
cd /tmp/fonts
wget http://download.microsoft.com/download/E/6/7/E675FFFC-2A6D-4AB0-B3EB-27C9F8C8F696/PowerPointViewer.exe
cabextract -L -F ppviewer.cab PowerPointViewer.exe
cabextract ppviewer.cab

if [ ! -d ~/.fonts ]; then
>---mkdir ~/.fonts
fi

cp *.TT* ~/.fonts
