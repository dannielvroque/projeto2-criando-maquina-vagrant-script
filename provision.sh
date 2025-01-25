#!/bin/bash

# Update the package list
sudo apt-get update -y

# Install software packages
sudo apt-get install vim -y
sudo apt-get install curl -y
sudo apt-get install telnet -y
sudo apt-get install unzip -y
sudo apt-get install wget -y
sudo apt-get install net-tools -y
sudo apt-get install htop -y
sudo apt-get install nmap -y

# Verify versions
echo "Verifying installed versions..."
vim --version | head -n 1
curl --version | head -n 1
telnet --version 2>/dev/null || echo "Telnet doesn't have a built-in version flag."
unzip -v | head -n 1
wget --version | head -n 1
ifconfig --version 2>/dev/null || echo "Net-tools doesn't show version with this command."
htop --version | head -n 1
nmap --version | head -n 1

echo "Verification complete."

echo "Create person user"
sudo useradd -m -s /bin/bash droque
echo "User without password"
sudo passwd -d droque