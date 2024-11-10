#
# Copyright (C) 2024 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

DEVICE_PATH := device/samsung/gta9pwifi

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := kryo300

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := holi

# Filesystem
BOARD_ROOT_EXTRA_FOLDERS := carrier efs omr optics prism spu

# Kernel
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200n8 earlycon=msm_geni_serial,0x04C8C000 androidboot.hardware=qcom androidboot.console=ttyMSM0 androidboot.memcg=1 lpm_levels.sleep_disabled=1 video=vfb:640x400,bpp=32,memsize=3072000 msm_rtb.filter=0x237 service_locator.enable=1 androidboot.usbcontroller=4e00000.dwc3 swiotlb=0 loop.max_part=7 cgroup.memory=nokmem,nosocket iptable_raw.raw_before_defrag=1 ip6table_raw.raw_before_defrag=1
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware_mnt/image

TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_PREBUILT_RECOVERY_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/recovery_dtbo

# Filesystem
BOARD_ROOT_EXTRA_FOLDERS += efs omr optics prism

# Partitons
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 101584896
TARGET_COPY_OUT_VENDOR := vendor

BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_SUPER_PARTITION_SIZE := 10213130240
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := system odm product system_ext vendor
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 10208935936

BOARD_USES_METADATA_PARTITION := true
BOARD_USES_QCOM_FBE_DECRYPTION := true

# Platform
QCOM_BOARD_PLATFORMS += holi
TARGET_BOARD_PLATFORM := holi

# Recovery
BOARD_INCLUDE_RECOVERY_DTBO := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
TARGET_RECOVERY_DEFAULT_ROTATION := ROTATION_LEFT
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# TWRP specific build flags
TW_THEME := portrait_hdpi
TW_DEVICE_VERSION := DY3413-TEST-1
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_CUSTOM_CPU_TEMP_PATH := "/sys/devices/virtual/thermal/thermal_zone50/temp"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_TWRPAPP := true
TW_EXTRA_LANGUAGES := true
TW_HAS_DOWNLOAD_MODE := true
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_LPDUMP := true
TW_INCLUDE_LPTOOLS := true
TW_INCLUDE_NTFS_3G := true
TW_NO_EXFAT_FUSE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_FRAMERATE := 90

TW_LOAD_VENDOR_BOOT_MODULES := true
TW_LOAD_VENDOR_MODULES := "sdhci-msm.ko qcom_glink_rpm.ko sec_crashkey.ko stub-regulator.ko qcom_glink_smem.ko cw2217_fuel_gauge.ko _qcom_scm.ko icc-rpm.ko grdm.ko phy-qcom-ufs-qmp-v4-yupik.ko sec_class.ko spi-msm-geni.ko phy-qcom-ufs-qmp-v3.ko usb_notifier_qcom.ko sec_cmd.ko ufs-qcom.ko qcom_ipcc.ko clk-dummy.ko sec_log_buf.ko rpm-smd.ko sec_arm64_fsimd_debug.ko rt_pd_manager.ko focaltech_tp.ko tcpc_rt1711h.ko qcom-arm-smmu-mod.ko sgm41542_charger.ko sec_qc_rdx_bootdev.ko sec_param.ko qnoc-holi.ko sc89890h_charger.ko spmi-pmic-arb.ko crypto-qti-hwkm.ko proxy-consumer.ko v4l2-mem2mem.ko sec_reboot_cmd.ko qnoc-qos.ko wt_chg.ko cqhci-crypto-qti.ko sec_qc_msm_poweroff.ko phy-qcom-ufs-qrbtc-sdm845.ko secure_buffer.ko i2c-msm-geni.ko hardware_info.ko tcpc_class.ko sec_debug.ko qcom_hwspinlock.ko qcom_glink_native.ko crypto-qti-common.ko icnl9951r.ko ocp2138.ko mpm.ko hwkm.ko sec_upload_cause.ko memory_dump_v2.ko refgen.ko pinctrl-holi.ko ufshcd-crypto-qti.ko gcc-holi.ko sec_debug_region.ko aw35615_whole.ko smem.ko msm-poweroff.ko sec_crashkey_long.ko himax_mmi.ko phy-qcom-ufs.ko sec_qc_rbcmd.ko jadard_touch.ko qpnp-power-on.ko clk-smd-rpm.ko cqhci.ko iommu-logger.ko sec_boot_stat.ko rpm-smd-regulator.ko msm_drm.ko clk-qcom.ko usb_notify_layer.ko cx25890h_charger.ko sec_arm64_ap_context.ko sec_key_notifier.ko subsystem_restart.ko gcc-blair.ko qmi_helpers.ko cqhci-crypto.ko sec_qc_upload_cause.ko msm-geni-se.ko pinctrl-blair.ko msm_dma_iommu_mapping.ko pinctrl-msm.ko"
