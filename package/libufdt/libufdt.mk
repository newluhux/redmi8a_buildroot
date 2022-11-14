################################################################################
#
# libufdt
#
################################################################################

LIBUFDT_VERSION = 67ce20e01a858c995bf0b3cb8a728b6e55b0b6ff
LIBUFDT_SITE = https://android.googlesource.com/platform/system/libufdt
LIBUFDT_SITE_METHOD = git
HOST_LIBUFDT_DEPENDENCIES = host-python3

define LIBUFDT_INSTALL_TARGET_CMDS
	mkdir -pv $(TARGET_DIR)/usr/bin
	cp $(@D)/utils/src/mkdtboimg.py $(TARGET_DIR)/usr/bin/mkdtboimg
	chmod +x $(TARGET_DIR)/usr/bin/mkdtboimg
endef

define HOST_LIBUFDT_INSTALL_CMDS
        mkdir -pv $(HOST_DIR)/usr/bin
        cp $(@D)/utils/src/mkdtboimg.py $(HOST_DIR)/usr/bin/mkdtboimg
        chmod +x $(HOST_DIR)/usr/bin/mkdtboimg
endef

$(eval $(generic-package))
$(eval $(host-generic-package))
