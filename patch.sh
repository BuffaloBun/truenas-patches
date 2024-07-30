#!/bin/sh
apt update ; apt install -y git && \
rm -rf /tmp/truenas-patches ; git clone --branch 24.04.2 https://github.com/BuffaloBun/truenas-patches.git /tmp/truenas-patches && \
git apply --ignore-whitespace --directory=/ --unsafe-paths /tmp/truenas-patches/truenas-install.patch && \
truenas-install