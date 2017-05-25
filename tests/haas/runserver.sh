#!/usr/bin/env bash

echo "BLT Setup..."
blt validate:all
blt ci:setup

echo "Starting Drupal server... "
cd docroot
pwd
cd modules
git clone git@github.com:CashWilliams/drupen.git
cd ..

drush runserver `hostname`:8888 &

drush en -y drupen
drush route-list
