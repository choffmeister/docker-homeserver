#!/bin/bash -e

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# create folders on host
mkdir -p /mnt/data/photos
chown root:users /mnt/data/photos
chmod 770 /mnt/data/photos

mkdir -p /mnt/data/videos
chown root:users /mnt/data/videos
chmod 770 /mnt/data/videos

mkdir -p /mnt/data/homes
chown root:users /mnt/data/homes
chmod 750 /mnt/data/homes

