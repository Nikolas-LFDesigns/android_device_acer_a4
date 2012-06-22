#!/bin/sh
src_path=~/android-ics/system
cd $src_path

patch -p1 < $src_path/device/acer/a4/dev/htcboardconfig.diff
patch -p1 < $src_path/device/acer/a4/dev/overlay.diff
rm $src_path/frameworks/base/libs/ui/Android.mk.orig
rm $src_path/frameworks/base/libs/ui/OverlayHtc.cpp
rm $src_path/device/acer/a4/prebuilt/camera-htc/camera.mk
rm $src_path/device/acer/a4/BoardConfig.mk.orig
