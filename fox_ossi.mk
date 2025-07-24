$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, device/oplus/ossi/device.mk)

PRODUCT_DEVICE := ossi
PRODUCT_NAME := orangefox_ossi
PRODUCT_BRAND := oplus
PRODUCT_MODEL := Realme C55 (OrangeFox)
PRODUCT_MANUFACTURER := oplus

PRODUCT_PACKAGES += OrangeFox
