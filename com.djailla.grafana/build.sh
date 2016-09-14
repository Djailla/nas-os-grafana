#!/bin/bash

mkdir -m 755 -p /opt/grafana/
install -m 755 /home/source/rc.local /etc

apt-get update
if [ $RAINBOW_ARCHITECTURE = "x86_64" ]
then
    cd /tmp
    wget --no-check-certificate https://grafanarel.s3.amazonaws.com/builds/grafana_3.0.4-1464167696_amd64.deb
    apt-get install -y adduser libfontconfig
    dpkg -i grafana_3.0.4-1464167696_amd64.deb
else
    echo "No ARM support"
fi

exit 0
