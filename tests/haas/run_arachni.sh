#!/usr/bin/env bash

echo "Scanning with arachni..."
./tests/haas/arachni/bin/arachni http://${hostname}:8888