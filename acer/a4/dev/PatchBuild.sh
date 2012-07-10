#!/bin/sh
src_path=~/android-ics/system
cd $src_path

patch -p1 < $src_path/device/acer/a4/dev/wtether-enable.diff
cp $src_path/device/acer/a4/dev/SoftapControllerATH.cpp $src_path/system/netd/SoftapControllerATH.cpp

