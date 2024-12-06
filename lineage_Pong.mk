#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device.
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit some common ROM stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Bootanimation Resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

# SDCard Config.
PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Pong-user 12 SKQ1.230722.001 2408281751 release-keys" \
    BuildFingerprint=Nothing/Pong/Pong:12/SKQ1.230722.001/2408281751:user/release-keys \
    DeviceName=Pong \
    DeviceProduct=A065 \
    SystemDevice=Pong \
    SystemName=Pong \
    RisingChipset="taro" \
    RisingMaintainer="Samrth"


# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nothing/Pong/Pong:12/SKQ1.230722.001/2408281751:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-nothing

#Flags
PRODUCT_NO_CAMERA := false
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true
WITH_GMS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
