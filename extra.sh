#!/bin/bash

# Install Yay
echo "Installing Yay..."
sudo pacman -Syu --noconfirm
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Install Nerdfonts
echo "Installing Nerdfonts..."
yay -S getnf --noconfirm

# Install Mise
echo "Installing Mise..."
yay -S mise --noconfirm

# Install Fzf, Ripgrep, and Bat
echo "Installing Fzf, Ripgrep, and Bat..."
yay -S fd fzf ripgrep bat neofetch jq xclip --noconfirm

# Install Git
echo "Installing Git..."
yay -S git-delta lazygit --noconfirm

# Install Tmux
echo "Installing Tmux..."
yay -S tmux --noconfirm

# Install Fish shell
echo "Installing Fish shell..."
yay -S fish --noconfirm

# Install Firefox
echo "Installing Firefox..."
yay -S firefox --noconfirm

# Install i3
echo "Installing i3..."
yay -S i3-wm i3-gaps i3blocks i3lock i3status polybar dmenu rofi feh lxappearance --noconfirm

# Install rofi theme
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
sh setup.sh
cd ..
rm -rf rofi

# Reboot
echo "Rebooting the system..."
sudo reboot