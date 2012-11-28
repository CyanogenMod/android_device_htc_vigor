USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/vigor/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := unknown
TARGET_CPU_ABI := armeabi
TARGET_BOOTLOADER_BOARD_NAME := vigor

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL3 androidboot.hardware=vigor no_console_suspend=1
BOARD_KERNEL_BASE := 0x48800000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/htc/vigor/kernel

# Filesystem
BOARD_USES_MMCUTILS := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1308621824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2550136320
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_SUPPRESS_EMMC_WIPE := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 38
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# RIL
BOARD_PROVIDES_LIBRIL := true

# Camera
BOARD_HAVE_HTC_FFC := true
COMMON_GLOBAL_CFLAGS += -DNO_UPDATE_PREVIEW

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true

#Custom Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"
TARGET_PREBUILT_RECOVERY_KERNEL := device/htc/vigor/kernel
TARGET_RECOVERY_INITRC := device/htc/vigor/recovery/init.rc