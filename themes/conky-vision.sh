#!/bin/bash

set -xe

sudo apt-get install -y
		typecatcher \
		conky-all \
		jq \
		inkscape
cd /tmp
git clone https://github.com/zagortenay333/conky-Vision.git
cd conky-Vision
cp -r .conky-vison ~/
./render-pngs
cp -r .conky-vision-icons/\#444__32 ~/.conky-vision
