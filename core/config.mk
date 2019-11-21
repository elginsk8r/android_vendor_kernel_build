# Copyright (C) 2015 The CyanogenMod Project
#           (C) 2017 The LineageOS Project
#           (C) 2018 The Evervolv Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

EVERVOLV_SRC_API_DIR := $(TOPDIR)prebuilts/evervolv-sdk/api
INTERNAL_EVERVOLV_PLATFORM_API_FILE := $(TARGET_OUT_COMMON_INTERMEDIATES)/PACKAGING/evervolv_public_api.txt
INTERNAL_EVERVOLV_PLATFORM_REMOVED_API_FILE := $(TARGET_OUT_COMMON_INTERMEDIATES)/PACKAGING/evervolv_removed.txt
FRAMEWORK_EVERVOLV_PLATFORM_API_FILE := $(SRC_EVERVOLV_DIR)/sdk/api/evervolv_current.txt
FRAMEWORK_EVERVOLV_PLATFORM_REMOVED_API_FILE := $(SRC_EVERVOLV_DIR)/sdk/api/evervolv_removed.txt
FRAMEWORK_EVERVOLV_API_NEEDS_UPDATE_TEXT := $(SRC_EVERVOLV_DIR)/build/core/apicheck_msg_current.txt

# Rules for QCOM targets
include $(SRC_EVERVOLV_DIR)/build/core/qcom_target.mk

# Kernel specifics
include $(SRC_EVERVOLV_DIR)/build/core/kernel_config.mk

# Soong exports
include $(SRC_EVERVOLV_DIR)/build/core/soong.mk
