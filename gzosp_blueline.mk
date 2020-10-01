# Boot animation
TARGET_SCREEN_HEIGHT := 2160
TARGET_SCREEN_WIDTH := 1080

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/gzosp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_blueline.mk)

#-include device/google/crosshatch/crosshatch/device-gzosp.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := gzosp_blueline
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=blueline \
    PRIVATE_BUILD_DESC="blueline-user 11 RP1A.200720.009 6720564 release-keys"

BUILD_FINGERPRINT="google/blueline/blueline:11/RP1A.200720.009/6720564:user/release-keys"
BUILD_THUMBPRINT="11/RP1A.200720.009/6720564:user/release-keys"

$(call inherit-product-if-exists, vendor/google/blueline/blueline-vendor.mk)

# Inherit Google App configuration
$(call inherit-product-if-exists, vendor/googleapps/googleapps.mk)