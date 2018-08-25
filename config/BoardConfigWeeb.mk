# Kernel
include vendor/weeb/config/BoardConfigKernel.mk

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/weeb/config/BoardConfigQcom.mk
endif

# Soong
include vendor/weeb/config/BoardConfigSoong.mk
