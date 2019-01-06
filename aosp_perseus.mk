#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/perseus/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/pixeldust/configs/pixeldust_phone.mk)
$(call inherit-product, vendor/pixeldust/configs/system_optional.mk)
$(call inherit-product, vendor/googleapps/googleapps.mk)

# Inherit some common PixelExperience stuff.
TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
#USTOM_BUILD_TYPE := OFFICIAL
TARGET_INCLUDE_STOCK_ARCORE := true 

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_perseus
PRODUCT_DEVICE := perseus
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 3
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="perseus" \
    TARGET_DEVICE="perseus"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
