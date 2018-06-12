#!/bin/bash

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
systemctl stop undervoltWatch.service
systemctl disable undervoltWatch.service

rm undervoltWatch /usr/bin/
rm undervoltWatch.service /etc/systemd/system/
echo Uninstalled.

