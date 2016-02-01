# 
# Vendor force copy script
# By Surge1223 
#
# Quick and easy way to send all vendor files to TARGET_OUT_VENDOR/
# so it will generate a full vendor.img 
#
#
LOCAL_PATH := $(call my-dir)


# For verifying that the vendor build is what we thing it is

$(shell mkdir -p $(TARGET_OUT_VENDOR)/)
$(shell cp -fR $(LOCAL_PATH)/vendor/* $(TARGET_OUT_VENDOR)/)


define vendormk
	if [ ! -z "$(TARGET_OUT_VENDOR)/lib64" ]; then \
		echo "Copying vendor files for vendor image"; \
		cp $(LOCAL_PATH)/* `pwd`/$(TARGET_OUT_VENDOR)/;
    	fi
endef

