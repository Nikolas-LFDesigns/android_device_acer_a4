#!/bin/sh
src_path=~/android-ics/system
cd $src_path

patch -p1 < $src_path/device/acer/a4/dev/Liquid_build-patch.diff
patch -p1 < $src_path/device/acer/a4/dev/bootanimFix.diff
#camera patches
patch -p1 < $src_path/device/acer/a4/dev/MemHeapBase.diff
patch -p1 < $src_path/device/acer/a4/dev/Overlay.diff
cp $src_path/device/acer/a4/dev/AcerQualcommRIL.java $src_path/frameworks/base/telephony/java/com/android/internal/telephony/AcerQualcommRIL.java
