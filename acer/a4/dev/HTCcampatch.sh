#!/bin/sh
src_path=~/android-ics/system
cd $src_path

patch -p1 < $src_path/device/acer/a4/dev/htcboardconfig.diff
patch -p1 < $src_path/device/acer/a4/dev/overlay.diff
cp $src_path/device/acer/a4/dev/OverlayHtc.cpp $src_path/frameworks/base/libs/ui/OverlayHtc.cpp
cp $src_path/device/acer/a4/dev/camera.mk $src_path/device/acer/a4/prebuilt/camera-htc/camera.mk
