#!/bin/bash
sudo apt-get install flex
sudo apt-get install bison
sudo apt-get install build-essential
sudo apt-get install libgtk2.0-dev
sudo apt-get install libncurses5-dev
sudo apt-get install libjpeg-dev
sudo apt-get install libtiff-dev
sudo apt install git
git clone https://github.com/wrcad/xictools
cd xictools
cp Makefile.sample Makefile
make config
sudo apt-get install libgsl-dev
make all 
make packages
cd xt_base/packages/pkgfiles
../util/wr_install all
cd ~/Desktop
sudo ln -s /usr/local/xictools/bin/xic xic
