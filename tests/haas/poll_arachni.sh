#!/usr/bin/env bash

echo "----------------------"
echo "Polling for arachni..."

while [ `pgrep arachni` ]
do
  sleep 10
  echo "Waiting 10 seconds..."
done

echo "Arachni completed..."

echo "Killing drush server..."
pkill -f runserver
