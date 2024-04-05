TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = Pinterest


include $(THEOS)/makefiles/common.mk

TWEAK_NAME = xterest

xterest_FILES = Tweak.x
xterest_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
