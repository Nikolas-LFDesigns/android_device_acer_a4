#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE=a4
MANUFACTURER=acer

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#-----------------------------
adb pull /system/wifi/ar6000.ko ./proprietary/modules
adb pull /system/wifi/ath6k/AR6003/hw2.0/athtcmd_ram.bin ./proprietary/firmware
adb pull /system/wifi/ath6k/AR6003/hw2.0/athwlan.bin.z77 ./proprietary/firmware
adb pull /system/wifi/ath6k/AR6003/hw2.0/bdata.SD31.bin ./proprietary/firmware
adb pull /system/wifi/ath6k/AR6003/hw2.0/bdata.SD31_1.bin ./proprietary/firmware
adb pull /system/wifi/ath6k/AR6003/hw2.0/bdata.SD31_2.bin ./proprietary/firmware
adb pull /system/wifi/ath6k/AR6003/hw2.0/data.patch.bin ./proprietary/firmware
adb pull /system/wifi/ath6k/AR6003/hw2.0/otp.bin.z77 ./proprietary/firmware
#-----------------------------------------
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keychars/acer-hs-butt.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keychars/qwerty2.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/AVRCP.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/a4-gpio-keypad.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/acer-hs-butt.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/cypress-ts.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/usr/keylayout/qwerty.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
#-----------------------------------------
adb pull /system/etc/dhcpcd/dhcpcd.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/voicemail-conf.xml ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/etc/init.paso.bt.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

#-----------------------------------------
adb pull /system/lib/libauth.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libcommondefs.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsi_netctrl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdss.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libdsutils.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgsdi_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libgstk_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libidl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libloc_api-rpc-qc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnetmgr.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnv.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/liboncrpc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libpbmlib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqueue.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqdp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqmi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libqmiservices.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libril-acer-1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libril-acer-qmi-1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libril-acerril-hook-oem.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libpdapi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libpdsm_atl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libwms.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libwmsts.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

adb pull /system/lib/libaudioalsa.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libnetmgr.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/lib/libsensors_algos.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

adb pull /system/lib/hw/sensors.paso.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

#-----------------------------------------
adb pull /system/bin/akmd8975 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/artagent ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/athtestcmd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/get_wlan_mac ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/hci_qcomm_init ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/hostapd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/hostapd_cli ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/hostapd_wps ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/netmgrd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/port-bridge ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/bin/wmiconfig ../../../vendor/$MANUFACTURER/$DEVICE/proprietary

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/$MANUFACTURER/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/acer/__DEVICE__/extract-files.sh

# Prebuilt libraries that are needed to build open-source libraries
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/libaudioalsa.so:obj/lib/libaudioalsa.so \\

# All the blobs necessary for paso
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/qwerty.kcm.bin:/system/usr/keychars/qwerty.kcm.bin \\
    vendor/acer/__DEVICE__/proprietary/acer-hs-butt.kcm.bin:/system/usr/keychars/acer-hs-butt.kcm.bin \\
    vendor/acer/__DEVICE__/proprietary/qwerty2.kcm.bin:/system/usr/keychars/qwerty2.kcm.bin \\
    vendor/acer/__DEVICE__/proprietary/AVRCP.kl:/system/usr/keylayout/AVRCP.kl \\
    vendor/acer/__DEVICE__/proprietary/a4-gpio-keypad.kl:/system/usr/keylayout/a4-gpio-keypad.kl \\
    vendor/acer/__DEVICE__/proprietary/acer-hs-butt.kl:/system/usr/keylayout/acer-hs-butt.kl \\
    vendor/acer/__DEVICE__/proprietary/cypress-ts.kl:/system/usr/keylayout/cypress-ts.kl \\
    vendor/acer/__DEVICE__/proprietary/qwerty.kl:/system/usr/keylayout/qwerty.kl \\
# ETC
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/dhcpcd.conf:/system/etc/dhcpcd/dhcpcd.conf \\
    vendor/acer/__DEVICE__/proprietary/01_qcomm_omx.cfg:/system/etc/01_qcomm_omx.cfg \\
    vendor/acer/__DEVICE__/proprietary/voicemail-conf.xml:/system/etc/voicemail-conf.xml \\
    vendor/acer/__DEVICE__/proprietary/init.paso.bt.sh:/system/etc/init.paso.bt.sh \\
# ril libs
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/libauth.so:/system/lib/libauth.so \
    vendor/acer/__DEVICE__/proprietary/libcm.so:/system/lib/libcm.so \
    vendor/acer/__DEVICE__/proprietary/libcommondefs.so:/system/lib/libcommondefs.so \
    vendor/acer/__DEVICE__/proprietary/libdiag.so:/system/lib/libdiag.so \
    vendor/acer/__DEVICE__/proprietary/libdsi_netctrl.so:/system/lib/libdsi_netctrl.so \
    vendor/acer/__DEVICE__/proprietary/libdsm.so:/system/lib/libdsm.so \
    vendor/acer/__DEVICE__/proprietary/libdss.so:/system/lib/libdss.so \
    vendor/acer/__DEVICE__/proprietary/libdsutils.so:/system/lib/libdsutils.so \
    vendor/acer/__DEVICE__/proprietary/libgsdi_exp.so:/system/lib/libgsdi_exp.so \
    vendor/acer/__DEVICE__/proprietary/libgstk_exp.so:/system/lib/libgstk_exp.so \
    vendor/acer/__DEVICE__/proprietary/libidl.so:/system/lib/libidl.so \
    vendor/acer/__DEVICE__/proprietary/libloc_api-rpc-qc.so:/system/lib/libloc_api-rpc-qc.so \
    vendor/acer/__DEVICE__/proprietary/libmmgsdilib.so:/system/lib/libmmgsdilib.so \
    vendor/acer/__DEVICE__/proprietary/libnetmgr.so:/system/lib/libnetmgr.so \
    vendor/acer/__DEVICE__/proprietary/libnv.so:/system/lib/libnv.so \
    vendor/acer/__DEVICE__/proprietary/liboncrpc.so:/system/lib/liboncrpc.so \
    vendor/acer/__DEVICE__/proprietary/libpbmlib.so:/system/lib/libpbmlib.so \
    vendor/acer/__DEVICE__/proprietary/libqueue.so:/system/lib/libqueue.so \
    vendor/acer/__DEVICE__/proprietary/libqdp.so:/system/lib/libqdp.so \
    vendor/acer/__DEVICE__/proprietary/libqmi.so:/system/lib/libqmi.so \
    vendor/acer/__DEVICE__/proprietary/libqmiservices.so:/system/lib/libqmiservices.so \
    vendor/acer/__DEVICE__/proprietary/libril-acer-1.so:/system/lib/libril-acer-1.so \
    vendor/acer/__DEVICE__/proprietary/libril-acer-qmi-1.so:/system/lib/libril-acer-qmi-1.so \
    vendor/acer/__DEVICE__/proprietary/libril-acerril-hook-oem.so:/system/lib/libril-acerril-hook-oem.so \
    vendor/acer/__DEVICE__/proprietary/libpdapi.so:/system/lib/libpdapi.so \
    vendor/acer/__DEVICE__/proprietary/libpdsm_atl.so:/system/lib/libpdsm_atl.so \
    vendor/acer/__DEVICE__/proprietary/libwms.so:/system/lib/libwms.so \
    vendor/acer/__DEVICE__/proprietary/libwmsts.so:/system/lib/libwmsts.so
# hw libs
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/sensors.paso.so:/system/lib/hw/sensors.paso.so \\
# libs
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/libaudioalsa.so:/system/lib/libaudioalsa.so \\
    vendor/acer/__DEVICE__/proprietary/libnetmgr.so:/system/lib/libnetmgr.so \\
    vendor/acer/__DEVICE__/proprietary/libsensors_algos.so:/system/lib/libsensors_algos.so \\

# binaries
PRODUCT_COPY_FILES += \\
    vendor/acer/__DEVICE__/proprietary/akmd8975:/system/bin/akmd8975 \\
    vendor/acer/__DEVICE__/proprietary/artagent:/system/bin/artagent \\
    vendor/acer/__DEVICE__/proprietary/athtestcmd:/system/bin/athtestcmd \\
    vendor/acer/__DEVICE__/proprietary/get_sensors_calib:/system/bin/get_sensors_calib \\
    vendor/acer/__DEVICE__/proprietary/get_wlan_mac:/system/bin/get_wlan_mac \\
    vendor/acer/__DEVICE__/proprietary/hci_qcomm_init:/system/bin/hci_qcomm_init \\
    vendor/acer/__DEVICE__/proprietary/hostapd:/system/bin/hostapd \\
    vendor/acer/__DEVICE__/proprietary/hostapd_cli:/system/bin/hostapd_cli \\
    vendor/acer/__DEVICE__/proprietary/hostapd_wps:/system/bin/hostapd_wps \\
    vendor/acer/__DEVICE__/proprietary/netmgrd:/system/bin/netmgrd \\
    vendor/acer/__DEVICE__/proprietary/port-bridge:/system/bin/port-bridge \\
    vendor/acer/__DEVICE__/proprietary/qmuxd:/system/bin/qmuxd \\
    vendor/acer/__DEVICE__/proprietary/wmiconfig:/system/bin/wmiconfig
EOF

./setup-makefiles.sh
