#!/bin/bash

./setup-ramdisk.sh 10
./setup-maven-ramdisk.sh
./setup-postgres-ramdisk.sh
chown -R saptarshi.roy:saptarshi.roy /tmp/ramdisk

