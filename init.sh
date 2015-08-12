#!/bin/bash -e

DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
SERVICES="samba owncloud"

# build and configure docker services
for SERVICE in $SERVICES; do
  echo "Starting service $SERVICE..."
  cd "$DIR/$SERVICE"
  "$DIR/$SERVICE/init.sh"
  docker build --force-rm=true -t "$SERVICE" .
  cp "$SERVICE.service" "/etc/systemd/system/$SERVICE.service"
  systemctl daemon-reload
  systemctl enable "$SERVICE.service"
  systemctl restart "$SERVICE.service"
done

