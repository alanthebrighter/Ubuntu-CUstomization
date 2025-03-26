#!/bin/bash

set -e

# Disclaimer
echo "This script is provided as-is, without any guarantees."
echo "Use at your own risk. Errors or unexpected behaviors may occur."
echo "Suggestions for improvements are always welcome!"

# Update the system
echo "Updating the system..."
sudo apt update && sudo apt dist-upgrade -y

# Install essential packages
echo "Installing essential packages..."
sudo apt install curl git rsync gdebi nautilus-admin nautilus-extension-gnome-terminal sassc gnome-tweaks gnome-shell-extension-manager -y

# Install Conky and Cava
echo "Installing Conky and Cava..."
sudo apt install conky-all jq curl playerctl cava -y

# Install Neofetch
echo "Installing Neofetch..."
sudo apt install neofetch -y

# Install Fish and Oh My Posh
echo "Installing Fish and Oh My Posh..."
sudo apt install fish -y
chsh -s /usr/bin/fish
echo "Downloading and setting up Oh My Posh..."
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

# Install Flatpak and additional applications
echo "Installing Flatpak and applications..."
sudo apt install gnome-software gnome-software-plugin-flatpak flatpak libfuse2 -y
flatpak install flathub io.bassi.Amberol -y
flatpak install flathub net.agalwood.Motrix -y
flatpak install flathub com.rafaelmardojai.Blanket -y
flatpak install flathub com.github.KRTirtho.Spotube -y
flatpak install flathub com.mattjakeman.ExtensionManager -y

# Flatpak permissions
echo "Configuring Flatpak permissions..."
sudo flatpak override --filesystem=~/.themes
sudo flatpak override --filesystem=~/.local/share/icons
sudo flatpak override --filesystem=xdg-config/gtk-4.0

# Install GNOME applications
echo "Installing GNOME applications..."
sudo apt install gnome-weather gnome-maps gnome-audio gnome-calendar gnome-clocks gnome-connections gnome-console gnome-contacts gnome-music vlc gnome-shell-pomodoro -y

# Install Plymouth (Boot screen)
echo "Configuring Plymouth..."
sudo apt install plymouth -y
sudo update-alternatives --install \
    /usr/share/plymouth/themes/default.plymouth plymouth-theme \
    /usr/share/plymouth/themes/hexagon_dots/hexagon_dots.plymouth 100
sudo update-alternatives --config default.plymouth
sudo update-initramfs -u

# Final message
echo "Initial setup completed!"
echo "Now download the theme and configuration files manually, as described in the documentation."
echo "Then, extract and apply the themes manually using GNOME Tweaks."
echo "If you encounter any issues, troubleshoot accordingly or modify the script as needed."

