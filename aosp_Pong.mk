#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit some common ROM stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Bootanimation Resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Pong-user 12 SKQ1.240903.001 2501131723 release-keys" \
    BuildFingerprint=Nothing/Pong/Pong:12/SKQ1.240903.001/2501131723:user/release-keys \
    DeviceName=Pong \
    DeviceProduct=A065 \
    SystemDevice=Pong \
    SystemName=Pong 

# Flags
TARGET_HAS_UDFPS := true
TARGET_ENABLE_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_CALL_RECORDING_SUPPORTED := true
