#!/bin/bash

cat /etc/samba/users.conf | while read USERPASS; do
  ID=$(echo $USERPASS | awk '{print $1}')
  USER=$(echo $USERPASS | awk '{print $2}')
  PASS=$(echo $USERPASS | awk '{print $3}')

  adduser --disabled-login --shell /bin/false --gecos '' --home "/data/homes/$USER" --uid "$ID" --gid 100 "$USER"
  echo -e "$PASS\n$PASS" | smbpasswd -a "$USER"
done

