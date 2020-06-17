#
# Copyright 2012 The Android Open Source Project
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

$(call inherit-product, vendor/omni/config/gsm.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/kernel:kernel \
	$(LOCAL_PATH)/recovery_dtbo:recovery_dtbo \
	$(LOCAL_PATH)/recovery/root/etc/recovery.fstab:recovery.fstab \
	system/timezone/output_data/iana/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

PRODUCT_DEVICE	:= c330ae
PRODUCT_NAME	:= omni_c330ae
PRODUCT_BRAND	:= Rakuten
PRODUCT_MODEL	:= C330
PRODUCT_MANUFACTURER := TINNO

BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := false

PRODUCT_PROPERTY_OVERRIDES := ro.treble.enabled=true

PRODUCT_PROPERTY_OVERRIDES += \
	ro.build.version.security_patch=2099-12-31 \
	ro.vendor.build.security_patch=2099-12-31 \
	ro.product.cpu.abilist=arm64-v8a,armeabi-v7a,armeabi \
	sys.usb.config=adb
