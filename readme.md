# x11docker/basics

fixes the debian version and adds
a bunch of files I always add, probably many are already in the initialization.  

these are all apps which have no interactivity!

put rsync borgbackup filezilla in each a separate image with an entry point to run as 

    docker run s3cmd

with the entry point value [see](https://docs.docker.com/develop/develop-images/dockerfile_best-practices/)
 
## test with 

    apt-get install -y --dry-run --no-install-recommends \
	sudo \
	lvm2 curl git \
	avahi-daemon avahi-utils  

removed rsync borgbackup filezilla \

run with 

   docker buildx build --tag andrewufrank/xfcebasics:1 --platform linux/arm/v7,linux/arm64,linux/amd64,linux/arm/v6 --push .


# Extend base image
 
```
FROM x11docker/xfce
RUN apt-get update
RUN apt-get install -y midori
```
 
 

