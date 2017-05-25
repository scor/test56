#!/usr/bin/env bash

wget -qO- https://github.com/Arachni/arachni/releases/download/v1.5.1/arachni-1.5.1-0.5.12-linux-x86_64.tar.gz | tar xvz -C vendor/
mv vendor/arachni* vendor/arachni

export PATH=${pwd}/vendor/arachni:$PATH
