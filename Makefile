TARGET := iphone:clang:latest:15.0
INCLUDE_SDKVERSION = 14.5
INSTALL_TARGET_PROCESSES = Pinterest
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = xterest

xterest_FILES = Tweak.x
xterest_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
