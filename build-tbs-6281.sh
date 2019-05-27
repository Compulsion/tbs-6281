#!/bin/bash

make mrproper
cp /usr/lib/modules/`uname -r`/build/.config ./
cp /usr/lib/modules/`uname -r`/build/Module.symvers ./
make oldconfig
make LOCALVERSION="" EXTRAVERSION=-1 modules_prepare
make M=drivers/media/pci/saa716x

