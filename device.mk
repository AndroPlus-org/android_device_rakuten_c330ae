#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#-include device/xiaomi/c330ae/system_prop.mk

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

#CNE
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# FM
PRODUCT_PACKAGES += \
    FMRadio \
    libfmjni

#GMS
PRODUCT_GMS_CLIENTID_BASE := android-tinno

# IMS
PRODUCT_PACKAGES += \
    ims-ext-common

# Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-service.rakuten_c330ae

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.2-service-qti

# Bluetooth
PRODUCT_PACKAGES += \
    audio.a2dp.default

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# RCS
PRODUCT_PACKAGES += \
    rcs_service_aidl \
    rcs_service_aidl.xml \
    rcs_service_api \
    rcs_service_api.xml

# Telephony
PRODUCT_PACKAGES += \
    telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

# VNDK
PRODUCT_PACKAGES += \
    vndk_package

# WiFi Display
#PRODUCT_BOOT_JARS += \
#    WfdCommon

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Call proprietary blob setup
$(call inherit-product-if-exists, vendor/rakuten/c330ae/c330ae-vendor.mk)
