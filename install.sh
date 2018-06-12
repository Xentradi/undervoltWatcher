#!/bin/bash

# Make sure only root can run our script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
cp undervoltWatch /usr/bin/
chmod +x /usr/bin/undervoltWatch
cp undervoltWatch.service /etc/systemd/system/
systemctl enable undervoltWatch.service
echo Installed. Use systemctl start undervoltWatch.service to start
