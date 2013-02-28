#!/bin/sh

$patches_folder patch
cd ../

patch -p1 < $patches_folder/hwc.diff
patch -p1 < $patches_folder/wtether-enable.diff
cp $patches_folder/SoftapControllerATH.cpp system/netd/SoftapControllerATH.cpp

