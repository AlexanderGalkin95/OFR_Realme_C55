#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oplus/ossi

# A/B OTA postinstall
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control HAL (shared libs only)
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    bootctrl.mt6768 \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload

# -------------------------
# Blobs: vendor keymaster/gatekeeper libs (prebuilt/lib64/* → vendor/lib64/*)
# -------------------------
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/lib64/android.hardware.gatekeeper@1.0.so:vendor/lib64/android.hardware.gatekeeper@1.0.so \
    $(LOCAL_PATH)/prebuilt/lib64/android.hardware.keymaster@3.0.so:vendor/lib64/android.hardware.keymaster@3.0.so \
    $(LOCAL_PATH)/prebuilt/lib64/android.hardware.keymaster@4.0.so:vendor/lib64/android.hardware.keymaster@4.0.so \
    $(LOCAL_PATH)/prebuilt/lib64/android.hardware.keymaster@4.1.so:vendor/lib64/android.hardware.keymaster@4.1.so \
    $(LOCAL_PATH)/prebuilt/lib64/libkeymaster_messages.so:vendor/lib64/libkeymaster_messages.so \
    $(LOCAL_PATH)/prebuilt/lib64/libkeymaster_portable.so:vendor/lib64/libkeymaster_portable.so \
    $(LOCAL_PATH)/prebuilt/lib64/libkeymaster4.so:vendor/lib64/libkeymaster4.so \
    $(LOCAL_PATH)/prebuilt/lib64/libkeymaster4_1support.so:vendor/lib64/libkeymaster4_1support.so \
    $(LOCAL_PATH)/prebuilt/lib64/libkeymaster41.so:vendor/lib64/libkeymaster41.so \
    $(LOCAL_PATH)/prebuilt/lib64/libkeymaster4support.so:vendor/lib64/libkeymaster4support.so \
    #$(LOCAL_PATH)/prebuilt/lib64/libkeystore-engine-wifi-hidl.so:vendor/lib64/libkeystore-engine-wifi-hidl.so \
    $(LOCAL_PATH)/prebuilt/lib64/libkeystore-wifi-hidl.so:vendor/lib64/libkeystore-wifi-hidl.so \
    $(LOCAL_PATH)/prebuilt/lib64/libpuresoftkeymasterdevice.so:vendor/lib64/libpuresoftkeymasterdevice.so \
    $(LOCAL_PATH)/prebuilt/lib64/vendor.mediatek.hardware.keymaster_attestation@1.0.so:vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.0.so \
    $(LOCAL_PATH)/prebuilt/lib64/vendor.mediatek.hardware.keymaster_attestation@1.1.so:vendor/lib64/vendor.mediatek.hardware.keymaster_attestation@1.1.so

