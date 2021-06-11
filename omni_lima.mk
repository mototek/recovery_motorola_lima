#
# Copyright (C) 2020 - 2021 Doritos™ Motorola | Developers
# Copyright (C) 2019 - 2021 Motorola™ MT67XX | MotoTek
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

# Release name
PRODUCT_RELEASE_NAME := Motorola One Macro
PRODUCT_USE_DYNAMIC_PARTITIONS := true

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := lima
PRODUCT_NAME := omni_lima
PRODUCT_BRAND := Motorola
PRODUCT_MODEL := One Macro
PRODUCT_MANUFACTURER := Motorola

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31

