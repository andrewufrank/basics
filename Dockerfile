# x11docker/basics
# 
#  fixes the debian version to buster
# adds non-interactive apps which I always use 

# removed  rsync borgbackup filezilla \

FROM debian:buster

RUN apt-get update && apt-mark hold iptables && \
    env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
	sudo \
	lvm2 curl git \
	avahi-daemon avahi-utils \
	&& rm -rf /var/lib/apt/lists/*
	

CMD ["/bin/sh"]
