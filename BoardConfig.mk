#
# Copyright (C) 2017 The Android Open Source Project
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

LOCAL_PATH := device/xiaomi/mido

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506
TARGET_BOARD_SUFFIX := _64

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8953
TARGET_NO_BOOTLOADER := true
TARGET_PROVIDES_KEYMASTER := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_FBE := true
TW_INCLUDE_CRYPTO_FBE := true
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw
TW_CRYPTO_SYSTEM_VOLD_MOUNT := system vendor cust


# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78af000 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/Image.gz-dtb

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x04000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 58846064640 # (58846081024-16384)
BOARD_VENDORIMAGE_PARTITION_SIZE := 872415232
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

# Recovery
BOARD_NEEDS_VENDORIMAGE_SYMLINK := false
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_HAS_LARGE_FILESYSTEM := true

# System-as-root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_ROOT_EXTRA_FOLDERS := bluetooth dsp firmware persist
BOARD_SUPPRESS_SECURE_ERASE := true


# TWRP Configuration
TW_THEME := portrait_hdpi
TW_INCLUDE_CRYPTO := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 155
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_SUPERSU := true
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/twrp.fstab
BOARD_SUPPRESS_SECURE_ERASE := true
TW_IGNORE_MISC_WIPE_DATA := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_HAS_EDL_MODE := false
TW_EXTRA_LANGUAGES := true
ALLOW_MISSING_DEPENDENCIES := true
TW_CRYPTO_SYSTEM_VOLD_MOUNT := system vendor cust
AB_OTA_UPDATER := false
TW_USE_TOOLBOX := true

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_NTFS_3G := true

# OTA
TARGET_OTA_ASSERT_DEVICE := mido
#SHRP
# NOTE - Dont use '-' or blank spaces in flag values , otherwise it will create build errors or other bugs in recovery (Excluding SHRP_PATH,SHRP_REC). 
# Path of your SHRP Tree
SHRP_PATH := device/brand/codename
# Maintainer name
SHRP_MAINTAINER := QualityTeam
# Device codename
SHRP_DEVICE_CODE := c103
# put this 0 if device has no EDL mode
SHRP_EDL_MODE := 0
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
# Put 0 to disable flashlight
SHRP_FLASH := 1
# These are led paths, find yours then put here (Optional)
SHRP_CUSTOM_FLASHLIGHT := true
SHRP_FONP_1 := /sys/class/leds/led:torch_0/brightness
SHRP_FONP_2 := /sys/class/leds/led:torch_1/brightness
SHRP_FONP_3 := /sys/class/leds/led:switch/brightness
# Max Brightness of LED (Optional)
SHRP_FLASH_MAX_BRIGHTNESS := 255
# Check your device's recovery path, dont use blindly
SHRP_REC := /dev/block/bootdevice/by-name/recovery
# Use this flag only if your device is A/B
SHRP_AB := false
# Recovery Type (It can be treble,normal,SAR) [Only for About Section]
SHRP_REC_TYPE := Treble
# Recovery Type (It can be A/B or A_only) [Only for About Section]
SHRP_DEVICE_TYPE := A_Only
# SHRP Padding Flag (Only for rounded corner devices.)
SHRP_STATUSBAR_RIGHT_PADDING := 40
SHRP_STATUSBAR_LEFT_PADDING := 40
# SHRP Express, enables on-the-fly theme patching (also persistent) + persistent lock
SHRP_EXPRESS := true

