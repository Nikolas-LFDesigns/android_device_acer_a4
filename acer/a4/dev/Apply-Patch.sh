#!/bin/sh
src_path=~/android-ics/system
cd $src_path

patch -p1 < $src_path/device/acer/a4/dev/Liquid_build-patch.diff
cp $src_path/device/acer/a4/dev/AcerQualcommRIL.java $src_path/frameworks/base/telephony/java/com/android/internal/telephony/AcerQualcommRIL.java
