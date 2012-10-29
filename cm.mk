## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := vigor

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/vigor/device_vigor.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vigor
PRODUCT_NAME := cm_vigor
PRODUCT_BRAND := htc
PRODUCT_MODEL := vigor
PRODUCT_MANUFACTURER := htc
