#!/usr/bin/env bash

set -xeuo pipefail

sudo umount /usr/local -l | echo
sudo mkdir -p \
    /usr/local \
    /var/lib/addons/upper \
    /var/lib/addons/work
sudo rm -rf /var/lib/addons/work/*
sudo mount -t overlay overlay \
    -o lowerdir=/usr/local,upperdir=/var/lib/addons/upper,workdir=/var/lib/addons/work \
    /usr/local