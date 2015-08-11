# docker-homeserver

My homeserver (NAS) setup splitted into individual docker services. It is supposed to run on a Debian 8 Jessie host machine. Although it might also work on any other host machines that supports:

* systemd
* docker

## Usage

```bash
# install recent docker version
wget -qO- https://get.docker.com/ | sh

# create folders (all data is stored under /mnt/data), docker images, startscripts and so on
./init.sh
```

