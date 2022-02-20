# Include vendor board platforms and utilities early
# enough so BoardConfigQcom can read from them.
include $(SRC_EVERVOLV_DIR)/build/core/utils.mk
include $(SRC_EVERVOLV_DIR)/build/core/vendor/qcom_boards.mk

ifneq ($(PRODUCT_MANUFACTURER), Google)
ifeq ($(call is-board-platform-in-list, $(QCOM_BOARD_PLATFORMS)),true)
include $(SRC_EVERVOLV_DIR)/build/target/board/BoardConfigQcom.mk
endif
endif
