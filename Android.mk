LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), c330ae)
	include $(call all-makefiles-under, $(LOCAL_PATH))
endif
