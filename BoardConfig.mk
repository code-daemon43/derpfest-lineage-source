#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Include the common OEM chipset BoardConfig.
include device/oneplus/sm8150-common/BoardConfigCommon.mk

DEVICE_PATH := device/oneplus/guacamole

# Display
TARGET_SCREEN_DENSITY := 560

# Kernel
BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc/1d84000.ufshc
TARGET_KERNEL_ADDITIONAL_FLAGS += \
    CONFIG_INITRAMFS_IGNORE_SKIP_FLAG=y \
    CONFIG_PROC_CMDLINE_APPEND_ANDROID_FORCE_NORMAL_BOOT=y
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_CLANG_PATH := /home/avraham/derp/prebuilts/clang/host/linux-x86/clang-r510928
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_CLANG_VERSION := r510928
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-androidkernel-
TARGET_KERNEL_CROSS_COMPILE_ARM32_PREFIX := arm-linux-androideabi-
KERNEL_TOOLCHAIN := /home/avraham/derp/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_DTBOIMG_PARTITION_SIZE := 25165824
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3640655872
BOARD_USERDATAIMAGE_PARTITION_SIZE := 115601780736
BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_ODMIMAGE_PARTITION_SIZE := 104857600

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/init/fstab.qcom

# Include the proprietary files BoardConfig.
include vendor/oneplus/guacamole/BoardConfigVendor.mk
