#!/bin/bash

make mrproper
cp /usr/lib/modules/`uname -r`/build/.config ./
cp /usr/lib/modules/`uname -r`/build/Module.symvers ./
make oldconfig
make prepare && make scripts
make M=drivers/media/pci/saa716x

