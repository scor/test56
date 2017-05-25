#!/usr/bin/env bash

while [ `pgrep arachni` ]
do
  sleep 10
done

pgrep drush | xargs kill 2>/dev/null
