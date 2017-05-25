#!/usr/bin/env bash

echo "BLT Setup..."
blt validate:all
blt ci:setup

echo "Starting Drupal server... "
cd docroot
drush runserver `hostname`:8888

# echo "Scanning with arachni..."
# ./tests/haas/arachni/bin/arachni http://`hostname`:8888 --timeout 0:0:15
