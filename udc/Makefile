#
# Copyright (C) 2015 MediaTek Inc.
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#

obj-m += udc_lib.o

udc_lib-y += \
    adler32.o \
    crc32.o \
    zutil.o \
    deflate.o \
    trees.o \
    udc_lib_main.o

ccflags-y += \
    -DZ_SOLO

ccflags-y += \
	-I$(srctree)/drivers/misc/mediatek/eccci/udc \
	-I$(srctree)/drivers/misc/mediatek/eccci/udc/udc_lib_inc

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules $(KBUILD_OPTIONS)

modules_install:
	$(MAKE) M=$(PWD) -C $(KERNEL_SRC) modules_install

clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) clean
