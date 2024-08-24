#!/bin/bash

# Update the system
echo "Updating the system..."
sudo pacman -Syu --noconfirm

# Install kitty
echo "Installing kitty..."
sudo pacman -S kitty --noconfirm

# Install GNOME desktop environment
echo "Installing GNOME desktop environment..."
sudo pacman -S xorg xorg-xinit gnome --noconfirm

# Install GDM
echo "Installing GDM..."
sudo pacman -S gdm --noconfirm

# Enable GDM
echo "Enabling GDM..."
sudo systemctl enable gdm.service

# Reboot
echo "Rebooting the system..."
sudo reboot
