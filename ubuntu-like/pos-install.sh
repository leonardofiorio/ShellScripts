#!/bin/bash

# Update package list and the system
sudo apt update -y
sudo apt dist-upgrade -y

## Install package by APT
# Ubuntu Restricted Extras: codecs, plugins and fonts
# Git client
# Unrar: to manipulate rar files
# Vim: to edit text files
# guvcview: webcam software
# Transmission: torrent client
# Htop: to monitor resources
# Gnome-tweak-tool: to customize the Gnome interface
# LmSensors: to monitor device temperature
# Gimp: to edit images
# Libreoffice: suite office
# Gparted: partition-editing application
# VLC: player
# OBS Studio: software for video recording and live streaming
# Audacity: edit audios

# Default package list to install by APT
packs=(
   ubuntu-restricted-extras
   curl
   git
   unrar
   vim
   guvcview
   transmission
   htop
   gnome-tweak-tool
   lm-sensors
   gimp
   gparted
   libreoffice
   vlc
   obs-studio
   audacity
)

# Loop to install packages
for p in ${packs[@]}; do
    sudo apt install "$p" -y
done

# Change directory to Downloads 
cd ~/

# Download and install Google Chrome by deb package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Removing Google Chrome deb file
rm -rf google-chrome-stable_current_amd64.deb


echo "Do you want install complete desktop applications? <y/n>"
read anwser
if [[ $anwser = 'y' ]]; then
    echo "Installing desktop applications..."

    # Install Snap
    sudo apt install snap

    # Install Skype by snap
    sudo snap install skype --classic 

    # Install Sublime Text by snap
    sudo snap install sublime-text --classic

    # Install Telegram
    sudo apt install telegram-desktop
fi


# Cleaning the system
sudo apt autoclean -y && sudo apt autoremove -y

# Reduce swap usage 
sudo echo 'vm.swappiness=0' >> /etc/sysctl.conf

# Create alias to clean swap
echo "alias cln='sudo swapoff -a && sudo swapon -a'" >> ~/.bashrc