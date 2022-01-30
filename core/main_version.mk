# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Override fingerprint for Google Play Services and SafetyNet
ifneq ($(PRODUCT_OVERRIDE_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.stock_fingerprint=$(PRODUCT_OVERRIDE_FINGERPRINT)
endif

ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.evervolv.device=$(TARGET_DEVICE) \
    ro.evervolv.releasetype=$(EV_BUILD_TYPE) \
    ro.evervolv.version=$(EV_VERSION)

ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.evervolv.build.version.plat.sdk=$(EV_PLATFORM_SDK_VERSION) \
    ro.evervolv.build.version.plat.rev=$(EV_PLATFORM_REV)

ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.evervolv.build.version.plat.sdk=$(EV_PLATFORM_SDK_VERSION) \
    ro.evervolv.build.version.plat.rev=$(EV_PLATFORM_REV)
