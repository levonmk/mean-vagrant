#!/usr/bin/env bash

#basics
apt-get update
apt-get install -y byobu
apt-get install -y vim
apt-get install -y npm

#mongodb
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo start mongod

#making npm work as per http://stackoverflow.com/a/13119867
npm config set registry http://registry.npmjs.org/

