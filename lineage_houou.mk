# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from houou device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := sony
PRODUCT_DEVICE := houou
PRODUCT_MANUFACTURER := sony
PRODUCT_NAME := lineage_houou
PRODUCT_MODEL := Xperia Ace

PRODUCT_GMS_CLIENTID_BASE := android-sony
TARGET_VENDOR := sony
TARGET_VENDOR_PRODUCT_NAME := houou
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="houou-user 9 P-GANGES-DOCOMO-190930-0911 1 dev-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Sony/houou/houou:9/P-GANGES-DOCOMO-190930-0911/1:user/dev-keys
