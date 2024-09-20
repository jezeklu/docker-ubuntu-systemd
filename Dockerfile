FROM ubuntu:24.04

RUN echo 'root:root' | chpasswd
RUN printf '#!/bin/sh\nexit 0' > /usr/sbin/policy-rc.d
RUN apt-get update
RUN apt-get install -y systemd systemd-sysv dbus dbus-user-session vim mc
RUN printf "systemctl start systemd-logind" >> /etc/profile

ENTRYPOINT ["/sbin/init"]