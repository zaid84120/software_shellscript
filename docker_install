#!/bin/bash
sudo apt update
sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce -y
echo "Enter the Name of the user to add it on Docker Group......"
read username
useradd $username
echo "Enter the password for $username "
passwd 
usermod -aG docker $username

