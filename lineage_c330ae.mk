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

# Inherit from the common Open Source configuration.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from the common LineageOS configuration.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from c330ae device
$(call inherit-product, device/rakuten/c330ae/device.mk)

PRODUCT_DEVICE := c330ae
PRODUCT_NAME := lineage_c330ae
PRODUCT_BRAND := Rakuten
PRODUCT_MODEL := Rakuten Mini
PRODUCT_MANUFACTURER := TINNO

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="c330ae-user 9 PKQ1.190616.001 253 release-keys" \
    PRODUCT_NAME="C330" \
    TARGET_DEVICE="c330ae"

BUILD_FINGERPRINT := Rakuten/C330/C330:9/PKQ1.190616.001/253:user/release-keys
