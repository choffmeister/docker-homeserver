#!/bin/bash -e

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

mkdir -p /mnt/data/owncloud
chown www-data:www-data /mnt/data/owncloud
chmod 770 /mnt/data/owncloud

mkdir -p /mnt/data/owncloud/data
chown www-data:www-data /mnt/data/owncloud/data
chmod 770 /mnt/data/owncloud/data

touch /mnt/data/owncloud/config.php
chown www-data:www-data /mnt/data/owncloud/config.php
chmod 660 /mnt/data/owncloud/config.php

