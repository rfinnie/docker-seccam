#!/bin/sh

set -e
set -x

export DEBIAN_FRONTEND=noninteractive
apt-get update -y
apt-get install -y --no-install-recommends ffmpeg daemontools
apt-get clean
adduser --system --home /streams --no-create-home --quiet streams
mkdir -p /streams
chown streams:nogroup /streams
