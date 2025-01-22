#!/bin/bash
echo "Creating mount point for tools ==============="
mkdir /tmp/tools
echo "-------- Done ---------"
sleep 0.5
echo "Mounting Tools partition ==============="
mount /dev/sda19 /tmp/tools
echo "-------- Done ---------"
sleep 0.5
echo "Backing up boot & dtbo partitions ==============="
dd if=/dev/sde39 of=/tmp/tools/kali/boot_b.img
dd if=/dev/sde46 of=/tmp/tools/kali/dtbo_b.img
sleep 0.5
echo "-------- Done ---------"
chmod +x ./android.sh
echo "======= Setup Complete ======="