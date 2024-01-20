PRODUCT_MAKEFILES := \
	$(LOCAL_DIR)/crdroid_rosemary.mk

COMMON_LUNCH_CHOICES := \
    $(foreach variant, user userdebug eng, crdroid_rosemary-$(variant))
