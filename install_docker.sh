#!/bin/bash

curl -sSL https://get.docker.com | sh
sudo apt install python3-pip
sudo pip3 install docker-compose

sudo gpasswd -a $USER docker
