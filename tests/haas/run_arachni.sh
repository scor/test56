#!/usr/bin/env bash

echo "Scanning with arachni..."
 ./tests/haas/arachni/bin/arachni http://`ip a |grep "inet " | grep -v "127.0.0.1" |cut -d "/" -f 1`:8888 --timeout 0:0:15
#curl http://127.0.0.1:8888
