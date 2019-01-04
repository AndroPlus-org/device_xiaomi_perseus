#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sdm845-common
-include device/xiaomi/sdm845-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/perseus

# Root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Assert
TARGET_OTA_ASSERT_DEVICE := perseus

# IR Camera
TARGET_FACE_UNLOCK_CAMERA_ID := 1

# Camera
USE_CAMERA_STUB := true

# Kernel
TARGET_NO_KERNEL := true
TARGET_KERNEL_CONFIG := perseus_user_defconfig

# NFC
TARGET_USES_NQ_NFC := true

# Inherit from the proprietary version
-include vendor/xiaomi/perseus/BoardConfigVendor.mk

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
#BOARD_USES_RECOVERY_AS_BOOT := true
#TARGET_NO_RECOVERY := true

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# SELINUX
SELINUX_IGNORE_NEVERALLOWS := true

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_perseus
TARGET_RECOVERY_DEVICE_MODULES := libinit_perseus

# Treble
BOARD_VNDK_RUNTIME_DISABLE := false

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Display
TARGET_HAS_HDR_DISPLAY := true

# Audio (HotwordEnrollment)
BOARD_USES_ALSA_AUDIO := true
BOARD_SUPPORTS_SOUND_TRIGGER := true