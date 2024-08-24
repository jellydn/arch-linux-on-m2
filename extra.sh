#!/bin/bash

# Install Yay
echo "Installing Yay..."
sudo pacman -Syu --noconfirm
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

# Install Nerdfonts
echo "Installing Nerdfonts..."
yay -S getnf

# Install Mise
echo "Installing Mise..."
curl https://mise.run | sh

# Install Fzf, Ripgrep, and Bat
echo "Installing Fzf, Ripgrep, and Bat..."
yay -S fd fzf ripgrep bat neofetch jq xclip

# Install Git
echo "Installing Git..."
yay -S git-delta lazygit

# Install Tmux
echo "Installing Tmux..."
yay -S tmux

# Install Fish shell
echo "Installing Fish shell..."
yay -S fish

# Install Firefox
echo "Installing Firefox..."
yay -S firefox

# Install i3
echo "Installing i3..."
yay -S i3-wm i3blocks i3lock i3status polybar dmenu rofi feh lxappearance

# Install rofi theme
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
sh setup.sh
cd ..
rm -rf rofi

# Reboot
echo "Rebooting the system..."
sudo reboot
