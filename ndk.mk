LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libuWS
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := \
	src/Epoll.cpp \
	src/Extensions.cpp \
	src/Group.cpp \
	src/HTTPSocket.cpp \
	src/Hub.cpp \
	src/Networking.cpp \
	src/Node.cpp \
	src/Socket.cpp \
	src/WebSocket.cpp
LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/src
LOCAL_CPPFLAGS := -std=c++11 -fexceptions -DUWS_THREADSAFE
LOCAL_C_INCLUDES += $(DEPS_DIR)/boringssl/include
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/src
include $(BUILD_STATIC_LIBRARY)
