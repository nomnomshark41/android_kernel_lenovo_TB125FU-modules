LOCAL_PATH := $(call my-dir)

ifeq ($(MTK_WLAN_SUPPORT),)

ifeq ($(WLAN_BUILD_COMMON),)
	WIFI_NAME := wlan_drv_gen4m
	WIFI_HIF := axi
	WIFI_WMT := y
	WIFI_EMI := y
	WIFI_CHRDEV_MODULE := wmt_chrdev_wifi.ko
	include $(LOCAL_PATH)/build_wlan_drv.mk
endif

endif