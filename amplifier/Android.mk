LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SHARED_LIBRARIES := \
	liblog libutils libtinyalsa

LOCAL_CFLAGS += \
	-DPLATFORM_MSM8916 \
	-DRECORD_PLAY_CONCURRENCY \
	-DMULTI_VOICE_SESSION_ENABLED

LOCAL_C_INCLUDES := \
	external/tinyalsa/include \
	hardware/libhardware/include \
	$(call project-path-for,qcom-audio)/hal

LOCAL_HEADER_LIBRARIES := libsystem_headers libaudio_system_headers

LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_SRC_FILES := \
	rt5501.c \
	tfa.c \
	audio_amplifier.c

LOCAL_MODULE := audio_amplifier.msm8952
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_TAGS := optional
LOCAL_VENDOR_MODULE := true

include $(BUILD_SHARED_LIBRARY)
