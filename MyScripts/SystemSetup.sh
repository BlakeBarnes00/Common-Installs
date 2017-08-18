#!/bin/sh

if [ "$1" = "help" ]
then
  echo "themes            - Install theme manager and themes"
  echo "developer-tools   - Install developer tools"
  echo "graphics-drivers  - Install Nvidia Graphics Drivers"
  echo "networking        - Install networking tools"
  echo "misc              - Install misc. tools"
fi

if [ "$1" = "themes" ]
then
  sleep 2 && echo "Added Numix repository and downloading..."
  sudo apt-add-repository ppa:numix/ppa -y
  sudo apt-get update # Update the PPA list

  sudo apt-get install "numix-gtk-theme" -y
  sudo apt-get install "numix-icon-theme-circle" -y
  sudo apt-get install "numix-folders" -y

  # Now install the unity tweak tools
  sudo apt-get install "unity-tweak-tool" -y

elif [ "$1" = "developer-tools" ]
then
  sleep 2 && echo "Installing developer stuff..."
  sudo apt-get install "git" -y
  sudo apt-get install "vim" -y
  sudo apt-get install "premake4" -y
  sudo apt-get install "lua5.3" -y
  sudo apt-get install "python3.6" -y
  
  # This is for Java development
  sleep 2 && echo "Adding Oracle repository for Java and downloading..."
  sudo apt-add-repository ppa:webupd8team/java -y
  sudo apt-get update # Update the PPA list
  sudo apt-get install "oracle-java9-installer" -y

elif [ "$1" = "graphics-drivers" ]
then
  sleep 2 && echo "Adding Nvidea graphics repository and downloading..."
  sudo apt-add-repository ppa:graphics-drivers/ppa -y
  sudo apt-get update # Update the PPA list
  
  sudo apt-get purge nvidia* -y # Remove all Nvidia drivers (if any)
  sudo apt-get install "nvidia-384" -y # Most recent drivers

elif [ "$1" = "networking" ]
then
  sleep 2 && echo "Adding Networking tools.."
  sudo apt-get install "nmap" -y            # Scan wifi
  sudo apt-get install "net-tools" -y       # Basic networking tools
  sudo apt-get install "openssh-server" -y  # Enable SSH on this device

elif [ "$1" = "misc" ]
then
  sudo apt-get install "synaptic" -y          # Package management
fi

if [ "$2" = "-u" ]
then
  sudo apt-get upgrade -y
  sudo apt-get update -y

elif [ "$2" = "-r" ]
then
  sleep 10 && echo "Rebooting machine... Please stand by :) in 10 seconds!"
  sudo reboot --reboot
fi
