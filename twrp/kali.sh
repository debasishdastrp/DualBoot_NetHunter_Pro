#!/bin/bash
echo "Mounting Partition"
mkdir /tmp/tools
mount /dev/block/sda19 /tmp/tools/
echo "Setting Up Kali partition"
/tmp/tools/parted /dev/block/sda "name 17 userdata_android"
/tmp/tools/parted /dev/block/sda "name 18 userdata"
echo "Restoring DTBO partition"
dd if=/tmp/tools/kali/dtbo_b.img of=/dev/block/by-name/dtbo_b
echo "Restoring BOOT partition"
dd if=/tmp/tools/kali/boot_b.img of=/dev/block/by-name/boot_b
