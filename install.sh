#!/bin/bash

#install prerequisites
sudo apt-get install build-essential
sudo apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

# download opencv
git clone https://github.com/opencv/opencv.git
cd opencv
git checkout --track origin/2.4
mkdir release
cd release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ..
make
sudo make install
# update libary paths
sudo ldconfig -v
cd ../..

# get jpec files
mkdir jpec
cd jpec
git clone https://github.com/GarethFunk/jpec.git .
make
