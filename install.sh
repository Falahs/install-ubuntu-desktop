#!/bin/bash

# Check if the user has root privileges
if [[ $EUID -ne 0 ]]; then
  echo "You must be root to run this script."
  exit 1
fi

# Check if the Ubuntu Desktop ISO is already downloaded
if [ ! -f "ubuntu-desktop-20.04.4-desktop-amd64.iso" ]; then
  echo "Downloading Ubuntu Desktop ISO..."
  wget https://releases.ubuntu.com/20.04.4/ubuntu-desktop-20.04.4-desktop-amd64.iso
fi

# Create a directory to install Ubuntu Desktop in
mkdir ubuntu-desktop

# Mount the ISO
sudo mount -o loop ubuntu-desktop-20.04.4-desktop-amd64.iso ubuntu-desktop

# Install Ubuntu Desktop
sudo chroot ubuntu-desktop /bin/bash

# Update the package list
apt update

# Install the Ubuntu Desktop package
apt install ubuntu-desktop

# Reboot the system
reboot
