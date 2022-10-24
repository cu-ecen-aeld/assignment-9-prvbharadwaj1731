#Author: Pranav Bharadwaj
$(eval $(kernel-module))
AESDCHAR_VERSION = '99615bc53972a221237a111d3af4069ed9889298'
AESDCHAR_SITE= 'git@github.com:cu-ecen-aeld/assignments-3-and-later-prvbharadwaj1731.git'
AESDCHAR_SITE_METHOD = git
AESDCHAR_GIT_SUBMODULES = YES
AESDCHAR_MODULE_SUBDIRS = aesd-char-driver

#adding dependencies
define AESDCHAR_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
	
endef

$(eval $(kernel-module))
$(eval $(generic-package))
