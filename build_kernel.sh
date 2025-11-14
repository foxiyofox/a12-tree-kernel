#!/bin/bash


export PLATFORM_VERSION=13
export ANDROID_MAJOR_VERSION=t
export ARCH=arm64

make O=aout ARCH=arm64 exynos850-a12snsxx_defconfig
make O=aout ARCH=arm64 -j64
