#!/bin/bash

# Script to install NS-3 3.33 for Ubuntu/Debian/Mint

# Update system
sudo apt update -y && sudo apt upgrade -y

# Requirements for C++
sudo apt install g++ -y 

# Requirements for Python 
sudo apt install python3 python3-dev pkg-config sqlite3 python3-setuptools python-gi python-gi-cairo python3-gi python3-gi-cairo python3-pygraphviz gir1.2-gtk-3.0 ipython3 -y

# Other requirements 
sudo apt install wget make cmake gdb qt5-default git -y

# Download of ns-3.33
wget -O ns3.tar.bz2 https://www.nsnam.org/releases/ns-allinone-3.33.tar.bz2

# Unzip ns3.tar.bz2
tar -jxvf ns3.tar.bz2

# Delete ns3.tar.bz2 
rm -rf ns3.tar.bz2

# Open the bake directory
cd ns-allinone-3.33/bake

# To configure ns-3.33
./bake.py configure -e ns-3.33

# To download 
./bake.py download

# To build
./bake.py build

# Cleaning the system
sudo apt autoclean -y && sudo apt autoremove -y

# Configure waf
cd ../ns-3.33/
./waf configure




