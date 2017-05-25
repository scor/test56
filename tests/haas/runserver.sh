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

drush user-create demo --password="demo" --mail="demo@example.com"
drush en -y drupen
drush --uri=`hostname`:8888 route-list > /mnt/tmp/local.prod/source/tests/haas/drupal_route_list.txt
cat /mnt/tmp/local.prod/source/tests/haas/drupal_route_list.txt
