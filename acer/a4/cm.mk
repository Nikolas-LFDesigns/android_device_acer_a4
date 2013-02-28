# Inherit AOSP device configuration for liquid Mt.
$(call inherit-product, device/acer/a4/device_a4.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Include GSM stuff
$(call inherit-product, vendor/cm/config/gsm.mk)


#
# Setup device specific product configuration.
#

PRODUCT_NAME := cm_a4  
PRODUCT_BRAND := acer
PRODUCT_DEVICE := a4
PRODUCT_MODEL := Liquid MT
PRODUCT_MANUFACTURER := Acer
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=a4_generic1 BUILD_ID=IMM76D BUILD_FINGERPRINT="full_crespo-userdebug 4.0.4 IMM76L 4.0.4 release-keys" PRIVATE_BUILD_DESC="ro.build.fingerprint=google/full_crespo/crespo:4.0.4/IMM76L/4.0.4:userdebug/release-keys"

# Release name and versioning
PRODUCT_RELEASE_NAME := a4
PRODUCT_VERSION_DEVICE_SPECIFIC := -LF-Designs-$(shell date +%m%d%Y)

PRODUCT_PACKAGES += \
    FM \
    hcitool \
    Torch

#needed for stock gallery and camera
PRODUCT_COPY_FILES += \
    device/acer/a4/prebuilt/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    device/acer/a4/prebuilt/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    device/acer/a4/prebuilt/features.xml:system/etc/permissions/features.xml
