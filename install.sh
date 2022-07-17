#! /bin/sh

sudo apt-get update
sudo apt-get install libzmq3-dev
sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev libbz2-dev libboost-all-dev
sudo apt install libgflags-dev

git clone https://github.com/zeromq/libzmq.git

sudo mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=Release ..
sudo make install

cd ../../
sudo rm -rf libzmq