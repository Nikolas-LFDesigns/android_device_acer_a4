$(call inherit-product, build/target/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

$(call inherit-product-if-exists, vendor/acer/a4/a4-vendor.mk)

$(call inherit-product, build/target/product/full_base.mk)

DEVICE_PACKAGE_OVERLAYS += device/acer/a4/overlay

$(call inherit-product, device/acer/a4/a4.mk)
$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_BRAND := acer
PRODUCT_NAME := cm_a4
PRODUCT_DEVICE := a4
PRODUCT_MODEL := Liquid MT
PRODUCT_MANUFACTURER := Acer
