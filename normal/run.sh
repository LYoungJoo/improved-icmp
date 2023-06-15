#!/bin/sh
qemu-system-x86_64 \
	-m 64 \
	-kernel ./bzImage \
	-initrd ../rootfs.cpio.gz \
	-nographic \
	-append "console=ttyS0 oops=panic panic=1" \
	-netdev tap,id=net0,ifname=tap0,script=no,downscript=no -device e1000,netdev=net0 -no-reboot

