#!/bin/bash

echo "Cleaning up."
rm -rf device/mediatek/sepolicy_vndr

echo "Cloning required repositories."
git clone https://github.com/lineageos/android_device_mediatek_sepolicy_vndr device/mediatek/sepolicy_vndr
git clone https://github.com/chasbuilds/android_vendor_mediatek-opensource.git vendor/mediatek/opensource
git clone https://github.com/Cristianlp2/vendor_mediatek_interfaces.git vendor/mediatek/interfaces
git clone https://github.com/Mediatek-OSS/device_mediatek_common.git device/mediatek/common
git clone https://github.com/ProjectKasumi/vendor_gcgop vendor/gcgop
git clone https://github.com/xiaomi-mt6781-devs/android_hardware_mediatek hardware/mediatek
git clone https://github.com/windowz414/vendor_redmi_rosemary vendor/redmi/rosemary
git clone -b rad https://github.com/cly-build/rad-kernel-rosemary-R kernel/redmi/rosemary --depth=1 --single-branch
git clone https://github.com/windowz414/vendor_redmi_rosemary-firmware vendor/redmi/rosemary-firmware

echo "Removing charger images on vendor."
rm -rf vendor/*/charger

echo "Removing gnss on hardware/mediatek"
cd hardware/mediatek
rm -rf gnss*
rm -rf */gnss*
cd -

echo "Setting up builder username and hostname."
export BUILD_USERNAME=rad
export BUILD_HOSTNAME=archuser
