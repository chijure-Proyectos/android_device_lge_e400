USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/e400/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7x27a
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true
TARGET_BOOTLOADER_BOARD_NAME := e400
TARGET_CORTEX_CACHE_LINE_32 := true

BOARD_KERNEL_CMDLINE := androidboot.hardware=e0
BOARD_KERNEL_BASE := 0x00200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x01300000
BOARD_KERNEL_PAGESIZE := 4096

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 392167424
BOARD_USERDATAIMAGE_PARTITION_SIZE := 164626432
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 22

TARGET_KERNEL_CONFIG := cyanogenmod_e0_defconfig
TARGET_PREBUILT_KERNEL := device/lge/e400/kernel
TARGET_KERNEL_CUSTOM_TOOLCHAIN := arm-eabi-4.4.3

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := '"font_7x16.h"'

TARGET_SPECIFIC_HEADER_PATH := device/lge/e400/include

USE_OPENGL_RENDERER := true

# QCOM stuffs
BOARD_USES_QCOM_HARDWARE := true
TARGET_USES_OVERLAY := false
TARGET_HAVE_BYPASS  := false
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
TARGET_QCOM_HDMI_OUT := false
TARGET_FORCE_CPU_UPLOAD := true
BOARD_USES_QCOM_LIBS := true
BOARD_USE_QCOM_PMEM := true
BOARD_EGL_CFG := vendor/lge/e400/proprietary/lib/egl/egl.cfg
TARGET_GRALLOC_USES_ASHMEM := true
TARGET_NO_HW_VSYNC := true

BOARD_HAVE_BLUETOOTH := true

# to enable the GPS HAL
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := e400
# AMSS version to use for GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

BOARD_WLAN_DEVICE := qcwcn
WIFI_EXT_MODULE_PATH := /system/lib/modules/librasdioif.ko
WIFI_DRIVER_MODULE_PATH := /system/lib/modules/wlan.ko
WIFI_EXT_MODULE_NAME := librasdioif
WIFI_DRIVER_MODULE_NAME := wlan
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wext
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WEXT_NO_COMBO_SCAN := true

# Camera
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USES_LEGACY_CAMERA := true

TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"

# Flags 
COMMON_GLOBAL_CFLAGS += -DBOARD_CHARGING_CMDLINE_NAME='"lge.reboot"' -DBOARD_CHARGING_CMDLINE_VALUE='"pwroff"' -DQCOM_NO_SECURE_PLAYBACK -DQCOM_HARDWARE -DQCOM_ROTATOR_KERNEL_FORMATS -DREFRESH_RATE=60 -DBINDER_COMPAT