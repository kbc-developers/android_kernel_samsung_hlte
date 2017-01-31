#!/bin/bash

export ARCH=arm
export PATH=$(pwd)/../PLATFORM/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin:$PATH

mkdir output

make -C $(pwd) O=output CROSS_COMPILE=arm-eabi- msm8974_sec_defconfig VARIANT_DEFCONFIG=msm8974_sec_klimtdcm_defconfig SELINUX_DEFCONFIG=selinux_defconfig SELINUX_LOG_DEFCONFIG=selinux_log_defconfig TIMA_DEFCONFIG=tima_defconfig
make -j64 -C $(pwd) O=output CROSS_COMPILE=arm-eabi-

cp output/arch/arm/boot/zImage $(pwd)/arch/arm/boot/zImage
