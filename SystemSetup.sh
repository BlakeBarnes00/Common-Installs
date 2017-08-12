#!/bin/sh

# PPA's
sleep 2 && echo "Adding repositories..."
sudo apt-add-repository ppa:graphics-drivers/ppa -y
sudo apt-add-repository ppa:numix/ppa -y

sudo apt-get update # Update the PPA's

# Developer basics:
sleep 2 && echo "Adding developer tools.."
sudo apt-get install "git" -y       # Version control
sudo apt-get install "vim" -y       # File editing
sudo apt-get install "premake4" -y  # Makefile creator
sudo apt-get install "lua5.3" -y    # Lua files

# Networking
sleep 2 && echo "Adding Networking tools.."
sudo apt-get install "nmap" -y            # Scan wifi
sudo apt-get install "net-tools" -y       # Basic networking tools
sudo apt-get install "openssh-server" -y  # Enable SSH on this device

# Drivers
sleep 2 && echo "Setting up Nvidia drivers tools.."
sudo apt-get remove --purge nvidia* -y    # Remove all nvidea drivers
sudo apt-get install "nvidia-384" -y      # This is the most recent driver

# Tools
sleep 2 && echo "Adding other misc. tools.."
sudo apt-get install "synaptic" -y          # Package management
sudo apt-get install "nmap" -y              # Network scanning
sudo apt-get install "unity-tweak-tool" -y  # Manage themes
sudo apt-get install "net-tools" -y         # Helps show network properties

# Themes
sleep 2 && echo "Adding themse.."
sudo apt-get install "numix-gtk-theme" "numix-icon-theme-circle" -y

# Update and close Ubuntu
sudo apt-get upgrade -y
sudo apt-get update -y

sleep 10 && echo "Rebooting machine... Please stand by :) in 10 seconds!"
sudo reboot --reboot
