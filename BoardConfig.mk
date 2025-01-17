#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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
#

BOARD_VENDOR := htc

VENDOR_PATH := device/htc/hiae

TARGET_SPECIFIC_HEADER_PATH := device/htc/hiae/include

# Asserts
TARGET_OTA_ASSERT_DEVICE := htc_hiaeul,htc_hiaeuhl,htc_hiaewhl,htc_tuhl,hiaeul,hiaeuhl,htc_hiaewhl,hiaetuhl,hiae

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_INCORRECT_PARTITION_IMAGES := true
RELAX_USES_LIBRARY_CHECK := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8952
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x00078000
BOARD_KERNEL_CMDLINE := console=none androidboot.hardware=hiae ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 ramoops_memreserve=4M loop.max_part=7
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01f88000 --tags_offset 0x01d88000
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_LLVM_BINUTILS := false
TARGET_KERNEL_SOURCE := kernel/htc/msm8952
TARGET_KERNEL_CONFIG := lineage_hiae_defconfig
TARGET_KERNEL_CLANG_COMPILE := false

# APEX
TARGET_FLATTEN_APEX := true
OVERRIDE_TARGET_FLATTEN_APEX := true

# Audio
AUDIO_FEATURE_ENABLED_ACDB_LICENSE := true
AUDIO_FEATURE_ENABLED_ALAC_OFFLOAD := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_EXTN_FLAC_DECODER := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_MULTIPLE_TUNNEL := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
AUDIO_FEATURE_ENABLED_RECORD_PLAY_CONCURRENCY := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true
AUDIO_FEATURE_ENABLED_VOICE_CONCURRENCY := true
AUDIO_FEATURE_ENABLED_VORBIS_OFFLOAD := true
AUDIO_USE_LL_AS_PRIMARY_OUTPUT := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1

# Bionic
TARGET_LD_SHIM_LIBS := /system/vendor/lib/libBeautyChat.so|libshim_camera.so \
    /system/vendor/lib/libizat_core.so|/system/vendor/lib/libshim_gps.so \
    /system/vendor/lib64/libizat_core.so|/system/vendor/lib64/libshim_gps.so \
    /system/vendor/lib64/libgps.utils.so|/system/vendor/lib64/libshim_gps.so \
    /system/lib/libpower.so|/system/vendor/lib/libshim_power.so \
    /system/lib64/libpower.so|/system/vendor/lib64/libshim_power.so \
    /system/vendor/lib64/libril.so|/system/vendor/lib64/libshim_ril.so \
    /system/vendor/lib64/libril-qc-qmi-1.so|libaudioclient_shim.so \
    /system/lib/liblog.so|/system/lib/liblog_htc.so \
    /system/lib64/liblog.so|/system/lib64/liblog_htc.so \
    /system/vendor/lib/hw/camera.msm8952.so|libshim_sensor.so \
    /system/vendor/lib64/libqdutils.so|libdisplayconfig.so \
    /system/vendor/lib/hw/camera.msm8952.so|libc_mutexdestroy_shim.so

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/hiae/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Camera
TARGET_PROCESS_SDK_VERSION_OVERRIDE := \
    /system/bin/cameraserver=24 \
    /system/bin/cameraserver_32=24 \
    /system/vendor/bin/mm-qcamera-daemon=24
TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := libcamera_parameters_ext_hiae
USE_DEVICE_SPECIFIC_CAMERA := true

# Display
TARGET_ADDITIONAL_GRALLOC_10_USAGE_BITS := 0x02000000
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Filesystem
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3321888768
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11190403072

TARGET_ALLOW_LEGACY_AIDS := true
TARGET_FS_CONFIG_GEN := device/htc/hiae/config.fs
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

BOARD_ROOT_EXTRA_FOLDERS := \
    carrier \
    dsp \
    firmware/adsp \
    firmware/radio \
    firmware/wcnss \
    firmware/wsd

BOARD_ROOT_EXTRA_SYMLINKS := \
    /mnt/vendor/persist:/persist \
    /data/tombstones:/tombstones

# HIDL
DEVICE_MANIFEST_FILE := device/htc/hiae/manifest.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := \
    $(VENDOR_PATH)/device_framework_matrix.xml \
    hardware/qcom-caf/common/vendor_framework_compatibility_matrix_legacy.xml \
    vendor/lineage/config/device_framework_matrix.xml
DEVICE_MATRIX_FILE := device/htc/hiae/compatibility_matrix.xml
PRODUCT_ENFORCE_VINTF_MANIFEST_OVERRIDE := true

# Init
TARGET_INIT_VENDOR_LIB := //$(VENDOR_PATH):libinit_hiae

# IPA
USE_DEVICE_SPECIFIC_DATA_IPA_CFG_MGR := true

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Lineage Hardware
BOARD_HARDWARE_CLASS += \
    device/htc/hiae/lineagehw

# Memfd
TARGET_HAS_MEMFD_BACKPORT := true

# NFC
BOARD_NFC_CHIPSET := pn548
BOARD_NFC_HAL_SUFFIX := msm8952

# Power
USE_DEVICE_SPECIFIC_POWER := true

# Properties
TARGET_SYSTEM_PROP := device/htc/hiae/system.prop

# Qualcomm
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true
TARGET_USE_SDCLANG := true

# Recovery
ifneq ($(WITH_TWRP),true)
TARGET_RECOVERY_FSTAB := device/htc/hiae/rootdir/etc/recovery.fstab
endif

# SELinux
#-include device/qcom/sepolicy-legacy/sepolicy.mk
BOARD_SEPOLICY_DIRS += device/htc/hiae/sepolicy-minimal
SELINUX_IGNORE_NEVERALLOWS := true

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    device/htc/hiae/liblog_htc \
    device/htc/hiae/shims

# TWRP
ifeq ($(WITH_TWRP),true)
include device/htc/hiae/twrp.mk
endif

# Wifi
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_HAS_QCOM_WLAN         := true
BOARD_HAS_QCOM_WLAN_SDK     := true
BOARD_WLAN_DEVICE           := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
PRODUCT_VENDOR_MOVE_ENABLED := true
TARGET_PROVIDES_WCNSS_QMI   := true
TARGET_USES_WCNSS_CTRL      := true
TARGET_USES_QCOM_WCNSS_QMI  := true
WIFI_DRIVER_FW_PATH_AP      := "ap"
WIFI_DRIVER_FW_PATH_STA     := "sta"
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true

# Enable DRM plugins 64 bit compilation
TARGET_ENABLE_MEDIADRM_64 := true

# inherit from the proprietary version
-include vendor/htc/hiae/BoardConfigVendor.mk
