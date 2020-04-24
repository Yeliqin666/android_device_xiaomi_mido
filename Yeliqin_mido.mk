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

# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit Telephony packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
PRODUCT_PROPERTY_OVERRIDES := ro.treble.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8953

# Charger
#PRODUCT_PACKAGES += \
    charger_res_images

# Time Zone data for recovery
#PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := mido
PRODUCT_NAME := Yeliqin_mido
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 4X
PRODUCT_MANUFACTURER := Xiaomi
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/mido/mido:7.0/NRD90M/V9.6.1.0.NCFMIFD:user/release-keys"