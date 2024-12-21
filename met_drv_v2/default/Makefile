obj-m := met.o

ccflags-y += -I$(srctree)/include/

met-y := default/met_main.o

all:
	$(MAKE) -C $(KERNEL_SRC) M=$(PWD) modules $(KBUILD_OPTIONS)

clean:
	$(MAKE) -C $(KERNEL_SRC) M=$(M) clean

modules_install:
	$(MAKE) M=$(M) -C $(KERNEL_SRC) modules_install