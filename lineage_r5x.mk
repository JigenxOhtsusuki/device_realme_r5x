#
# Copyright (C) 2022-2024 PixelOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common PixelOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from r5x device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := realme
PRODUCT_DEVICE := r5x
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_r5x
PRODUCT_MODEL := realme 5 Series

PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := r5x
TARGET_VENDOR_DEVICE_NAME := r5x

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="r5x" \
    PRIVATE_BUILD_DESC="trinket-user 10 QKQ1.200209.002 release-keys"

# Time
LINEAGE_VERSION_APPEND_TIME_OF_DAY := true
