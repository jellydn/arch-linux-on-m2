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
yay -S getnf --noconfirm

# Install Mise
echo "Installing Mise..."
curl https://mise.run | sh

# Install Fzf, Ripgrep, and Bat
echo "Installing Fzf, Ripgrep, and Bat..."
yay -S fd fzf ripgrep bat neofetch jq xclip gpaste zoxide --noconfirm

# Install Git
echo "Installing Git..."
yay -S github-cli git-delta lazygit --noconfirm

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
sudo pacman -Sy xorg xorg-xinit i3-gaps i3lock i3status i3blocks dmenu dex xss-lock rofi polybar feh lxappearance

# Install rofi theme
git clone --depth=1 https://github.com/adi1090x/rofi.git
cd rofi
sh setup.sh
cd ..
rm -rf rofi

echo "Installation complete. Please reboot the system to apply the changes."
