#!/usr/bin/env bash

echo "Mock loopback interface..."
cat /etc/hosts
hostname

echo "Scanning with arachni..."
# ./tests/haas/arachni/bin/arachni http://127.0.0.1:8888