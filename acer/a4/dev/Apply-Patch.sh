#!/bin/sh
src_path=~/android-ics/system
cd $src_path

patch -p1 < $src_path/device/acer/a4/dev/Liquid_build-patch.diff
patch -p1 < $src_path/device/acer/a4/dev/bootanimFix.diff
patch -p1 < $src_path/device/acer/a4/dev/libaudiocompil.diff
#camera patches
patch -p1 < $src_path/device/acer/a4/dev/MemHeapBase.diff
patch -p1 < $src_path/device/acer/a4/dev/Overlay.diff
