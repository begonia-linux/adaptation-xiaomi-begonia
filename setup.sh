#!/bin/bash

# Run as root!
cp -rf /adaptation-xiaomi-begonia/* /
cp -rf /adaptation-xiaomi-begonia/etc/environment.d/environment /etc/environment
systemctl enable batman modules ssh-fix pbhelper droidian-perf