#!/bin/bash

sudo apt-get install cifs-utils
read -sp "user:" user
read -sp "Password:" pass
read -sp "samba_server:" server
sudo mount -t cifs //${server}/disk1_pt1 /mnt/samba/ -o vers=1.0,user=${user} ,password=${pass}
