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
pgrep drush | xargs kill 2>/dev/null
