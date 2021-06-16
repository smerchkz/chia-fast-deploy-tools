#!/bin/sh

wget -O miner.zip https://github.com/hpool-dev/chia-miner/releases/download/v1.4.0-2/HPool-Miner-chia-v1.4.0-2-linux.zip
unzip miner.zip

cp ./config.yaml ./linux/config.yaml

