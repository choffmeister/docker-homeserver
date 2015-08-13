FROM debian:8.1
MAINTAINER Christian Hoffmeister <mail@choffmeister.de>

RUN apt-get update \
 && apt-get install -y strongswan

CMD  /usr/sbin/ipsec start

EXPOSE 500/udp
EXPOSE 4500/udp

