#!/bin/bash 

sudo apt update -y
sudo apt install -y default-jdk

sudo apt -y install wget unzip
wget https://www-us.apache.org/dist/incubator/netbeans/incubating-netbeans/incubating-11.0/incubating-netbeans-11.0-bin.zip
unzip incubating-netbeans-11.0-bin.zip

sudo mv netbeans/ /opt/

echo "export PATH='$PATH:/opt/netbeans/bin/'" >> ~/.bashrc

source ~/.bashrc

netbeans
