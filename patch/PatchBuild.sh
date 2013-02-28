#!/bin/sh
src_path=~/ics
cd $src_path

patch -p1 < $src_path/device/acer/a4/dev/hwc.diff
patch -p1 < $src_path/device/acer/a4/dev/wtether-enable.diff
cp $src_path/device/acer/a4/dev/SoftapControllerATH.cpp $src_path/system/netd/SoftapControllerATH.cpp

