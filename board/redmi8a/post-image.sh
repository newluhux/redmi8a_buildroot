#!/bin/sh

set -eu

BOARD_DIR="$(dirname $0)"

abootimg --create ${BINARIES_DIR}/redmi8a.img \
	-f ${BOARD_DIR}/bootimg.cfg \
	-k ${BINARIES_DIR}/zImage-dtb \
	-r ${BINARIES_DIR}/rootfs.cpio.gz

# drity, need rewrite
mkdtboimg create ${BINARIES_DIR}/dtbo.img \
	${BUILD_DIR}/linux-custom/arch/arm/boot/dts/*/*.dtbo

exit $?
