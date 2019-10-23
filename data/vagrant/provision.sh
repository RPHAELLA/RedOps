#!/usr/bin/env bash

# Reconfigure dpkg configuration
# sudo dpkg --configure -a -y

# Install Tools
sudo apt-get -y install git
sudo apt-get -y install terminator
sudo apt-get -y tilix

# Setup MSF
msfdb init
systemctl enable postgresql.service

sudo reboot