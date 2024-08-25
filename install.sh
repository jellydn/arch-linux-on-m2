#!/bin/bash

# Update the system
echo "Updating the system..."
sudo pacman -Syu --noconfirm

# Install kitty
echo "Installing kitty..."
sudo pacman -Sy kitty --noconfirm

# Install GNOME desktop environment
echo "Installing GNOME desktop environment..."
sudo pacman -Sy xorg xorg-xinit --noconfirm
sudo pacman -Sy gnome

# Install GDM
echo "Installing GDM..."
sudo pacman -Sy gdm

# Enable GDM
echo "Enabling GDM..."
sudo systemctl enable gdm.service

# Print the installation status
echo "Installation complete. Please reboot the system to apply the changes."
