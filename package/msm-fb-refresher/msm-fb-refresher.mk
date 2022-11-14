################################################################################
#
# msm-fb-refresher
#
################################################################################

MSM_FB_REFRESHER_VERSION = 8a8378ab0108357908d51ecd5d92d22c7d549018
MSM_FB_REFRESHER_SITE = https://github.com/AsteroidOS/msm-fb-refresher
MSM_FB_REFRESHER_SITE_METHOD = git

define MSM_FB_REFRESHER_BUILD_CMDS
	$(TARGET_CC) $(TARGET_CFLAGS) $(@D)/refresher.c -o $(@D)/msm-fb-refresher
endef

define MSM_FB_REFRESHER_INSTALL_TARGET_CMDS
	mkdir -pv $(TARGET_DIR)/usr/bin
	cp $(@D)/msm-fb-refresher $(TARGET_DIR)/usr/bin/msm-fb-refresher
	chmod +x $(TARGET_DIR)/usr/bin/msm-fb-refresher
endef

$(eval $(generic-package))
