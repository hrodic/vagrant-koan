#!/usr/bin/env bash

echo "Provision VM START"
echo "=========================================="

#prepare repositories
sudo add-apt-repository ppa:chris-lea/node.js
sudo add-apt-repository ppa:chris-lea/node.js-devel
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update

#install git
sudo apt-get -y install git

#install nodejs
sudo apt-get -y install python-software-properties python g++ make
sudo apt-get -y install nodejs

#install mongo db
sudo apt-get -y install mongodb-org

#install base npm packages and node with harmony support
sudo npm install -g n
sudo n 0.11.13
sudo npm install -g bower
sudo npm install -g grunt-cli
sudo npm install -g yo

#install koan stack
cd /home/vagrant/workspace
sudo git clone --depth 1 https://github.com/soygul/koan.git
cd koan
npm install
npm start

echo ""
echo "=========================================="
echo "Node setup:"
node -v
echo ""
echo "Provision VM finished"
