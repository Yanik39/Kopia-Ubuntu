from kopia:kopia:latest as base
from ubuntu:latest
ENV \
  DEBIAN_FRONTEND="noninteractive" \
	TERM="xterm-256color" \
	LC_ALL="C.UTF-8"
  
RUN apt-get update && \
	apt-get upgrade -y --with-new-pkgs && \
	apt-get install -y --no-install-recommends \
  fuse3
  
RUN apt-get clean autoclean -y && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/* /var/lib/cache/* /var/lib/log/* \
		/var/tmp/* /usr/share/doc/ /usr/share/man/ /usr/share/locale/ \
		/root/.cache /root/.local /root/.gnupg /root/.config /tmp/*
    
RUN mkdir -p /mnt/snapshots   
