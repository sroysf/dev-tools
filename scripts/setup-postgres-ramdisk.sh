#!/bin/bash

echo "Copying Postgres VM disk to Ramdisk"
cd ~/VirtualBox\ VMs/postgres-ramdisk
cp postgres-ramdisk-disk1.vmdk.bak /tmp/ramdisk/postgres-ramdisk-disk1.vmdk
