#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mojito device
$(call inherit-product, device/xiaomi/mojito/device.mk)

# Inherit some common dotOS-FE  stuff
$(call inherit-product, vendor/dotfe/config/common.mk)

TARGET_USES_AOSP_RECOVERY := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := false

# dotOS-FE Stuff
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
WITH_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := dotfe_mojito
PRODUCT_DEVICE := mojito
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 10
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
  
BUILD_FINGERPRINT := google/coral/coral:11/RQ3A.210705.001/7380771:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=mojito \
    PRIVATE_BUILD_DESC="coral-user 11 RQ3A.210705.001 7380771 release-keys"
    
