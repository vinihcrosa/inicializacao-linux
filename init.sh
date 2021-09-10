#!/bin/bash
#Update Distro
apt-get update
apt-get upgrade -y
apt dist-upgrade -y
apt install git curl openvpn -y
cd ~

#Install nodejs version 14.x
curl -sL https://deb.nodesource.com/setup_14.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt install nodejs -y
npm install -g yarn nodemon typescript 

sudo apt install -y software-properties-common apt-transport-https wget

#Install snap packages
snap install discord
snap install slack --classic

snap install inkscape

snap install ufw

#code
snap install sublime-text --classic
snap install code --classic
snap install beekeeper-studio
#code Jetbrains
snap install phpstorm --classic
snap install pycharm-professional --classic
snap install intellij-idea-ultimate --classic

#Docker
apt-get remove docker docker-engine docker.io containerd runc
apt-get update

apt-get install -y apt-transport-https ca-certificates curl gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

apt-get update
apt-get -y install docker-ce docker-ce-cli containerd.io
docker run hello-world