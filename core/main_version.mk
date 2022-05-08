# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Override fingerprint for Google Play Services and SafetyNet
ifneq (,$(findstring $(BUILD_ID),$(BUILD_FINGERPRINT)))
PRODUCT_OVERRIDE_FINGERPRINT := $(BUILD_FINGERPRINT)
endif
PRODUCT_OVERRIDE_FINGERPRINT ?= google/raven/raven:12/SP2A.220405.004/8233519:user/release-keys

ifneq ($(PRODUCT_OVERRIDE_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.stock_fingerprint=$(PRODUCT_OVERRIDE_FINGERPRINT)
endif

ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.evervolv.device=$(TARGET_DEVICE) \
    ro.evervolv.releasetype=$(EV_BUILD_TYPE) \
    ro.evervolv.version=$(EV_VERSION) \
    ro.evervolv.build.version.plat.sdk=$(EV_PLATFORM_SDK_VERSION) \
    ro.evervolv.build.version.plat.rev=$(EV_PLATFORM_REV)
