#!/bin/bash

if [ -z ${1} ]; then
   echo "Must specify ram disk size in GB"
   exit -1
fi

mkdir /tmp/ramdisk; chmod 777 /tmp/ramdisk
mount -t tmpfs -o size=${1}G tmpfs /tmp/ramdisk/
