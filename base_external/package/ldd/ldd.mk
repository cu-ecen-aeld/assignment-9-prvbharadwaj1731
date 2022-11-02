#Assignment 7 makefile
#Author: Pranav Bharadwaj
LDD_VERSION = '71158cb114efc092ee3c93bc78605d9ec428bc4b'

LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-prvbharadwaj1731.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULE = YES
#LDD_MODULE_SUBDIRS = YES

LDD_MODULE_SUBDIRS += misc-modules/
LDD_MODULE_SUBDIRS += scull/

#make command for ldd
define LDD_CMDS
	$(MAKE)
endef

#Adding module and scull load/unload utilites
define LDD_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
	
#	$(INSTALL) -m 0755 $(TARGET_DIR)/lib/modules/5.15.18/extra/
#	$(INSTALL) -m 0755 $(@D)/misc-modules/hello.ko $(TARGET_DIR)/lib/modules/5.15.18/extra/hello.ko
#	$(INSTALL) -m 0755 $(@D)/misc-modules/faulty.ko $(TARGET_DIR)/lib/modules/5.15.18/extra/faulty.ko
#	$(INSTALL) -m 0755 $(@D)/scull/scull.ko $(TARGET_DIR)/lib/modules/5.15.18/extra/scull.ko
	
endef

$(eval $(kernel-module))
$(eval $(generic-package))
