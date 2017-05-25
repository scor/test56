#!/usr/bin/env bash

echo "BLT Setup..."
blt validate:all
blt ci:setup

echo "Starting Drupal server... "
cd docroot
drush runserver `hostname`:8888 &
