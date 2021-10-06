# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

ifeq ($(PRODUCT_OVERRIDE_INFO),true)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.stock_fingerprint=$(PRODUCT_OVERRIDE_FINGERPRINT)
endif

ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.evervolv.display.version=$(EV_VERSION) \
    ro.evervolv.device=$(EV_CODENAME) \
    ro.evervolv.version=$(TARGET_OTA_PACKAGE_NAME)

ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.evervolv.build.version.plat.sdk=$(EV_PLATFORM_SDK_VERSION) \
    ro.evervolv.build.version.plat.rev=$(EV_PLATFORM_REV)
