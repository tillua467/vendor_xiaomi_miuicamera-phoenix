#
# Copyright (C) 2023-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Prebuilt APKs
PRODUCT_PACKAGES += \
    MiuiCamera \
    MiuiExtraPhoto

PRODUCT_DEXPREOPT_SPEED_APPS += \
    MiuiCamera \
    MiuiExtraPhoto

PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/prebuilt/MiuiCamera/lib,$(TARGET_COPY_OUT_SYSTEM_EXT)/priv-app/MiuiCamera/lib) \
    $(call find-copy-subdir-files,*,vendor/xiaomi/miuicamera/prebuilt/MiuiExtraPhoto/lib,$(TARGET_COPY_OUT_SYSTEM_EXT)/app/MiuiExtraPhoto/lib)

# Properties
PRODUCT_SYSTEM_EXT_PROPERTIES += \
    persist.vendor.camera.privapp.list=com.android.camera \
    ro.com.google.lens.oem_camera_package=com.android.camera \
    ro.miui.build.region=in \
    ro.miui.notch=1 \
    ro.product.mod_device=_global \
    vendor.camera.aux.packagelist=com.android.camera

# Soong
PRODUCT_SOONG_NAMESPACES += \
    vendor/xiaomi/miuicamera
