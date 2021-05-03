#
# Prebuilt Huawei Camera for Huawei treble build
# ----------------------------------------------

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := privapp-permissions-HwCamera2.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/permissions
LOCAL_SRC_FILES := etc/permissions/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_OVERRIDES_PACKAGES := Camera2
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := HWCamera2
LOCAL_SRC_FILES := HwCamera2.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_REQUIRED_MODULES := privapp-permissions-HwCamera2.xml
include $(BUILD_PREBUILT)

# Watermark
$(shell mkdir -p $(TARGET_OUT)/watermark/wm)
$(shell cp $(LOCAL_PATH)/watermark/wm/* $(TARGET_OUT)/watermark/wm)

# Camera plugins
$(shell mkdir -p $(TARGET_OUT)/cameraplugins)
$(shell cp -r $(LOCAL_PATH)/cameraplugins/* $(TARGET_OUT)/cameraplugins)

# Local jni libraries
$(shell mkdir -p $(TARGET_OUT)/priv-app/HWCamera2/lib/arm)
$(shell cp -r $(LOCAL_PATH)/lib/arm/* $(TARGET_OUT)/priv-app/HWCamera2/lib/arm)

# Links
$(shell ln -sf /system/lib/vndk-26/android.hidl.base@1.0.so $(TARGET_OUT)/priv-app/HWCamera2/lib/arm/android.hidl.base@1.0.so)
