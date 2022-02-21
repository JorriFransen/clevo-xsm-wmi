obj-m += clevo-xsm-wmi.o
KERNEL_UNAME ?= $(shell uname -r)
KDIR := /lib/modules/$(KERNEL_UNAME)/build
PWD := $(shell pwd)
#CFLAGS_clevo-xsm-wmi.o := -DDEBUG

all:
	make -C $(KDIR) M=$(PWD) modules

install:
	make -C $(KDIR) M=$(PWD) modules_install

clean:
	make -C $(KDIR) M=$(PWD) clean
