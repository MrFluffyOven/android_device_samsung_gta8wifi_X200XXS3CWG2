# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

LOCAL_PATH := device/samsung/gta8wifi

PRODUCT_PLATFORM := ums512
PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_PACKAGES += \
    otapreopt_script \
    update_engine \
    update_engine_sideload \
    update_verifier \
    android.hardware.boot@1.0-impl \
    android.hardware.boot@1.0-service \
    android.hardware.boot@1.0-impl-wrapper.recovery \
    android.hardware.boot@1.0-impl-wrapper \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.$(PRODUCT_PLATFORM) \
    bootctrl.$(PRODUCT_PLATFORM).recovery \

PRODUCT_COPY_FILES += frameworks/native/data/etc/android.hardware.vulkan.version-1_1.xml:
$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.vulkan.version.xml

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# tzdata
PRODUCT_PACKAGES_ENG += \
    tzdata_twrp
