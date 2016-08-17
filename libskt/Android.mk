LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libskt

LIBRARIES_DIR	:= $(LOCAL_PATH)/../

LIBLOG_INC := $(LIBRARIES_DIR)/liblog/

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LIBLOG_INC)

LOCAL_LDLIBS += -L$(SYSROOT)/usr/lib -llog

# Add your application source files here...
LOCAL_SRC_FILES := libskt.c


include $(BUILD_SHARED_LIBRARY)
