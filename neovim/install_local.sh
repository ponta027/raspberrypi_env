#!/bin/bash

########################################################################
#
# https://github.com/neovim/neovim/wiki/Building-Neovim
#
########################################################################
cd /tmp
wget https://github.com/neovim/neovim/archive/refs/tags/stable.tar.gz
tar zxvf stable.tar.gz
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen -y
cd neovim-stable && make -j 4 CMAKE_BUIKD_TYPE=RelWithDebInfo
sudo make install

echo "Finish install"

