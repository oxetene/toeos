#!/bin/sh

VERSION=5.18.7

cd sources || exit
	wget https://mirrors.edge.kernel.org/pub/linux/kernel/v${VERSION%%.*}.x/linux-$VERSION.tar.xz
	tar -xvf linux-$VERSION.tar.xz

	cd linux-$VERSION || exit
		cp ../.config .config
		make -j4
		cp -v arch/x86_64/boot/bzImage ../../system/linux
	cd .. || exit
cd .. || exit
