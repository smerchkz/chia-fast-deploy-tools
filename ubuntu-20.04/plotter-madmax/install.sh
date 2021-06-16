#!/bin/sh

mkdir "$(pwd)/../../plots"
mkdir "$(pwd)/../../ssdTMP"

sudo apt install -y libsodium-dev cmake g++ git
# Checkout the source and install
git clone https://github.com/madMAx43v3r/chia-plotter.git
cd chia-plotter

git submodule update --init
./make_devel.sh
./build/chia_plot --help