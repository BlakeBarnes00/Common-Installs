#!/bin/sh

# PPA's
sudo apt-add-repository ppa:graphics-drivers/ppa -y
sudo apt-add-repository ppa:numix/ppa -y


sudo apt-get update # Update the PPA's

# Developer basics:
sudo apt-get install synaptic -y # Package management
sudo apt-get install git -y # Version control
sudo apt-get install vim -y # File editing
sudo apt-get install premake -y # Makefile creator

# Drivers
sudo apt-get remove --purge nvidia* -y # Remove all nvidea drivers
sudo apt-get install nvidia-384 -y

# Tools
sudo apt-get install nmap -y 
sudo apt-get install unity-tweak-tool -y

# Themes
sudo apt-get install numix-gtk-theme numix-icon-theme-circle -y

# Update and close Ubuntu
sudo apt-get upgrade
sudo apt-get update -y

echo "Rebooting machine... Please stand by :)"
sudo reboot --reboot
