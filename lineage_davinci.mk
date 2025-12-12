#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from davinci device
$(call inherit-product, device/xiaomi/davinci/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_DISABLE_EPPE := true

PRODUCT_NAME := lineage_davinci
PRODUCT_DEVICE := davinci
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="davinci-user 11 RKQ1.200826.002 V12.1.4.0.RFJMIXM release-keys" \
    BuildFingerprint=Xiaomi/davinci/davinci:11/RKQ1.200826.002/V12.1.4.0.RFJMIXM:user/release-keys \
    DeviceProduct=davinci \
    SystemName=davinci

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#Axion stuffs
TARGET_ENABLE_BLUR := true
HBM_SUPPORTED := true
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode

PERF_GOV_SUPPORTED := true
PERF_DEFAULT_GOV := schedutil
PERF_ANIM_OVERRIDE := false

# Camera information (multiple sensors supported)
AXION_CAMERA_REAR_INFO := 48,13,8
AXION_CAMERA_FRONT_INFO := 20

# Maintainer name (underscores become spaces in the UI)
AXION_MAINTAINER := hursitwww

# Processor name (underscores become spaces)
AXION_PROCESSOR := Snapdragon_730

