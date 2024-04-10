TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME = rootless
include $(THEOS)/makefiles/common.mk

watermark_CFLAGS = -fobjc-arc
watermark_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
watermark_LDFLAGS += -L./
watermark_LDFLAGS += -lz -stdlib=libc++

TWEAK_NAME = watermark

watermark_FILES = Tweak.x watermark.mm

watermark_LIBRARIES += substrate
watermark_FRAMEWORKS = UIKit Foundation Security QuartzCore CoreGraphics CoreText


include $(THEOS_MAKE_PATH)/tweak.mk
