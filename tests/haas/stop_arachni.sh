#!/usr/bin/env bash

HOSTNAME=`hostname`
ADDRESS=`cat /etc/hosts | grep $HOSTNAME | cut -d "	" -f1 

echo "Stopping arachni proxy..."
wget -e use_proxy=yes -e http_proxy=${$ADDRESS}:9595 http://arachni.proxy/shutdown
