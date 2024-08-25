#!/bin/bash

# Install VMware Tools
echo "Installing base-devel..."
sudo pacman -S base-devel autoconf automake libtool xorg-server-devel glib2-devel pkg-config xmlsec --noconfirm

echo "Cloning VMware Tools repository..."
rm -rf vmware-tools
git clone https://github.com/daimaou92/install-arch-vmwarefusion-techpreview.git vmware-tools

echo "Building and installing Open VMware Tools..."
rm -rf ~/open-vm-tools
cd vmware-tools/after/openvmtools
sh build.sh

# Reboot the system again to apply changes
echo "Rebooting the system again..."
sudo reboot
