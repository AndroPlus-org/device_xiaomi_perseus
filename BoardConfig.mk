#
# Copyright (C) 2018-2019 The LineageOS Project
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

# IR Camera
TARGET_FACE_UNLOCK_CAMERA_ID := 1

# Kernel
TARGET_KERNEL_SOURCE := kernel/xiaomi/sdm845
TARGET_KERNEL_CONFIG := perseus_user_defconfig
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_KERNEL_CMDLINE += enforcing=0

# NFC
TARGET_USES_NQ_NFC := true

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

# Inherit from the proprietary version
-include vendor/xiaomi/perseus/BoardConfigVendor.mk

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
#BOARD_USES_RECOVERY_AS_BOOT := true
#TARGET_NO_RECOVERY := true

# Sepolicy
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Vendor init
TARGET_INIT_VENDOR_LIB := libinit_perseus
TARGET_RECOVERY_DEVICE_MODULES := libinit_perseus

# Treble
BOARD_VNDK_RUNTIME_DISABLE := false

# Enable real time lockscreen charging current values
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# Display
TARGET_HAS_HDR_DISPLAY := true
