#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from Xiaomi Minerva
$(call inherit-product, device/xiaomi/minerva/device-common.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Configuration files
include $(LOCAL_PATH)/audio/audio.mk

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResTarget \
    SettingsProviderResTarget \
    SystemUIResTarget \
    WifiResTarget

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/citrus/citrus-vendor.mk)
