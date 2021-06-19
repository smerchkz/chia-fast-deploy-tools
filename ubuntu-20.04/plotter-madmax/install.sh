#!/bin/sh

mkdir -p "$(pwd)/../../ssd1/plots"
mkdir -p "$(pwd)/../../ssd1/ssdTMP"

mkdir -p "$(pwd)/../../ssd2/plots"
mkdir -p "$(pwd)/../../ssd2/ssdTMP"

sudo apt install -y libsodium-dev cmake g++ git
# Checkout the source and install
git clone https://github.com/madMAx43v3r/chia-plotter.git
cd chia-plotter

git submodule update --init
./make_devel.sh
./build/chia_plot --help