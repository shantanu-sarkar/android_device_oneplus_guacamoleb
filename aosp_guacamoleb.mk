#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from guacamoleb device
$(call inherit-product, device/oneplus/guacamoleb/device.mk)

# Inherit some common AOSP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_guacamoleb
PRODUCT_DEVICE := guacamoleb
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := GM1901
PRODUCT_BRAND := OnePlus

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus7-user 12 SKQ1.211113.001 P.202303230244 release-keys" \
    BuildFingerprint=OnePlus/OnePlus7/OnePlus7:12/SKQ1.211113.001/P.202303230244:user/release-keys \
    DeviceName=OnePlus7 \
    DeviceProduct=OnePlus7 \
    SystemDevice=OnePlus7 \
    SystemName=OnePlus7
