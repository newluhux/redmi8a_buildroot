#!/bin/sh

set -eu

BOARD_DIR="$(dirname $0)"

abootimg --create ${BINARIES_DIR}/redmi8a.img \
	-f ${BOARD_DIR}/bootimg.cfg \
	-k ${BINARIES_DIR}/Image.gz-dtb \
	-r ${BINARIES_DIR}/rootfs.cpio.gz
