#Author: Pranav Bharadwaj
AESD_CHAR_VERSION = '56bf710c24d1456012d664a0f74eaa4692a8a522'

AESD_CHAR_SITE = 'git@github.com:cu-ecen-aeld/assignments-3-and-later-prvbharadwaj1731.git'
AESD_CHAR_SITE_METHOD = git
AESD_CHAR_GIT_SUBMODULES = YES
AESD_CHAR_MODULE_SUBDIRS = aesd-char-driver/

define AESD_CHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin

	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin
endef

#$(eval $(kernel-module))
$(eval $(generic-package))
