#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := device/umidigi/umidigi_x

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi-v7a
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_SMP := true

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 131072 # 64 * BOARD_KERNEL_PAGESIZE (2048 here)

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true

# Bootloader & Platform
TARGET_BOARD_PLATFORM := mt6771
TARGET_BOOTLOADER_BOARD_NAME := mt6771
TARGET_NO_BOOTLOADER := true
TARGET_CPU_CORTEX_A53 := true

# FSTAB
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab

# Display and MISC
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true

TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

DEVICE_RESOLUTION := 720x1548
DEVICE_SCREEN_WIDTH := 720
DEVICE_SCREEN_HEIGHT := 1548

TW_THEME := portrait_hdpi
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_NO_USB_STORAGE := false
TW_DEFAULT_LANGUAGE := en
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_TWRPAPP := true

# Crypto
PLATFORM_SECURITY_PATCH := 2025-12-31
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# Kernel
include $(LOCAL_PATH)/kernel.mk
