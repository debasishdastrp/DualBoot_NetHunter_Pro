#!/bin/bash
echo "Mounting Partition"
mkdir /tmp/tools
sleep 0.5
mount /dev/sda19 /tmp/tools/
sleep 0.5
echo "Setting Up Android userdata partition"
parted /dev/sda "name 17 userdata"
sleep 0.5
parted /dev/sda "name 18 userdata_kali"
sleep 0.5
echo "Restoring DTBO partition"
dd if=/tmp/tools/android/dtbo_b.img of=/dev/sde46
sleep 0.5
echo "Restoring BOOT partition"
dd if=/tmp/tools/android/boot_b.img of=/dev/sde39
sleep 0.5