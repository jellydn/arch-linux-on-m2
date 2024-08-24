#!/bin/bash

# Install VMware Tools
echo "Installing base-devel..."
sudo pacman -S base-devel --noconfirm

echo "Cloning VMware Tools repository..."
git clone https://github.com/daimaou92/install-arch-vmwarefusion-techpreview.git

echo "Building and installing VMware Tools..."
cd install-arch-vmwarefusion-techpreview/openvmtools
sh build.sh

# Reboot the system again to apply changes
echo "Rebooting the system again..."
sudo reboot
