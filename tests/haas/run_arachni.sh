#!/usr/bin/env bash

echo "Scanning with arachni..."
# ./tests/haas/arachni/bin/arachni http://`hostname`:8888 --timeout 0:0:15
curl http://127.0.0.1:8888