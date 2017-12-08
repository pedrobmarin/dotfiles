 #!/bin/bash

set -xe

sudo add-apt-repository -y ppa:numix/ppa
sudo apt-get update
sudo apt-get install -y \
		numix-gtk-theme \
		numix-icon-theme-circle
