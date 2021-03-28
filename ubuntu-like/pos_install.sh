#!/bin/bash

# Update package list and the system
sudo apt update
sudo apt upgrade

## Install package by APT
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
# VLC: player
# OBS Studio: software for video recording and live streaming
sudo apt -y install curl git unrar vim guvcview transmission htop gnome-tweak-tool lm-sensors gimp gparted libreoffice vlc obs-studio

# Download and install Google Chrome by deb package
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
# Removing Google Chrome deb file
rm -rf google-chrome-stable_current_amd64.deb

# Install Skype by snap
sudo snap install skype --classic 

# Install Sublime Text by snap
sudo snap install sublime-text --classic

# Reboot the computer
sudo reboot 
