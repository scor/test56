#!/usr/bin/env bash

echo "Scanning with arachni..."
 ./tests/haas/arachni/bin/arachni http://`ifconfig eth0 | grep "inet addr" | cut -d ':' -f 2 | cut -d ' ' -f 1`:8888 --timeout 0:0:15
#curl http://127.0.0.1:8888
