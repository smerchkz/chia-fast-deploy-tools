#!/bin/sh

poolKey=''
farmerKey=''

#for tests different basket -u xx
#after tests change -n 1 to -n -1 for infinity creating plots
#./chia-plotter/build/chia_plot -t ../../ssdTMP/ -d ../../plots/ -n 1 -r 16 -u 64  -p $poolKey -f $farmerKey >> ./log
#./chia-plotter/build/chia_plot -t ../../ssdTMP/ -d ../../plots/ -n 1 -r 16 -u 128 -p $poolKey -f $farmerKey >> ./log

#best for AMD Ryzen 7 5800X 8-Core Processor
./chia-plotter/build/chia_plot -t ../../ssdTMP/ -d ../../plots/ -n 1 -r 16 -u 256 -p $poolKey -f $farmerKey >> ./log

#./chia-plotter/build/chia_plot -t ../../ssdTMP/ -d ../../plots/ -n 1 -r 16 -u 512 -p $poolKey -f $farmerKey >> ./log