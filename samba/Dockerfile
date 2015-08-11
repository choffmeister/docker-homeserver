FROM debian:8.1
MAINTAINER Christian Hoffmeister <mail@choffmeister.de>

RUN apt-get update \
 && apt-get install -y samba samba-common

ADD smb.conf /etc/samba/smb.conf
ADD users.conf /etc/samba/users.conf
ADD create-users.sh /etc/samba/create-users.sh

CMD /etc/samba/create-users.sh && rm /etc/samba/create-users.sh /etc/samba/users.conf && /usr/sbin/smbd -i

VOLUME /data
EXPOSE 139
EXPOSE 445

