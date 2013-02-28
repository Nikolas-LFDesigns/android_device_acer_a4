ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),paso)

LOCAL_PATH:= $(call my-dir)

#
# hciattach
#

include $(CLEAR_VARS)

LOCAL_SRC_FILES:= \
	hciattach.c \
	hciattach_st.c \
	hciattach_ti.c \
	hciattach_tialt.c

LOCAL_CFLAGS:= \
	-DVERSION=\"4.69\" \
	-D__BSD_VISIBLE=1

LOCAL_C_INCLUDES:=\
	$(LOCAL_PATH)/../lib \
	$(LOCAL_PATH)/../src \

LOCAL_SHARED_LIBRARIES := \
	libbluetoothd libbluetooth

LOCAL_MODULE:=hciattach

include $(BUILD_EXECUTABLE)

endif # TARGET_BOOTLOADER_BOARD_NAME = paso
