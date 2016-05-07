# Swift3 - Docker
Docker image with the Swift binaries (DEVELOPMENT-SNAPSHOT-2016-05-03-a)
and dependencies.  

This image was derived from IBM-Swift/swift-ubuntu-docker.  This is used for development and testing of Swift applications on the Linux Ubuntu (v15.10) operating system.

The goal of this fork is to:

1. Reduce the size of the Docker image
2. Reduce the number of images in the container
3. Follow the advice of using apt-get here:
   https://docs.docker.com/engine/userguide/eng-image/dockerfile_best-practices/
4. Remove non-critical dependencies
5. Move only the libdispatch binaries into the final image

# To use
Run the following in Terminal:

    ./build.sh

# Image sizes
    swift3               1.296 GB
    ibmcom/swift-ubuntu  1.765 GB


# libdispatch Binaries

The following files are created by the libdispatch Makefile:

    /usr/lib/swift/dispatch
    /usr/lib/swift/dispatch/base.h
    /usr/lib/swift/dispatch/block.h
    /usr/lib/swift/dispatch/data.h
    /usr/lib/swift/dispatch/dispatch.h
    /usr/lib/swift/dispatch/group.h
    /usr/lib/swift/dispatch/introspection.h
    /usr/lib/swift/dispatch/io.h
    /usr/lib/swift/dispatch/module.map
    /usr/lib/swift/dispatch/object.h
    /usr/lib/swift/dispatch/once.h
    /usr/lib/swift/dispatch/queue.h
    /usr/lib/swift/dispatch/semaphore.h
    /usr/lib/swift/dispatch/source.h
    /usr/lib/swift/dispatch/time.h
    /usr/lib/swift/linux/libdispatch.la
    /usr/lib/swift/linux/libdispatch.so
    /usr/lib/swift/linux/x86_64/Dispatch.swiftdoc
    /usr/lib/swift/linux/x86_64/Dispatch.swiftmodule
    /usr/lib/swift/os/linux_base.h
    /usr/lib/swift/os/object.h


# Docker History
Here is the Docker history from ibmcom/swift-ubuntu:

    docker history ibmcom/swift-ubuntu
    IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
    f7ceba0bc521        27 hours ago        /bin/sh -c cd swift-corelibs-libdispatch && g   14.71 MB            
    <missing>           27 hours ago        /bin/sh -c git clone -b experimental/foundati   2.446 MB            
    <missing>           27 hours ago        /bin/sh -c swiftc -h                            0 B                 
    <missing>           27 hours ago        /bin/sh -c #(nop) ENV PATH=/root/swift-DEVELO   0 B                 
    <missing>           27 hours ago        /bin/sh -c tar xzvf $SWIFT_SNAPSHOT-$UBUNTU_V   673.4 MB            
    <missing>           27 hours ago        /bin/sh -c wget https://swift.org/builds/deve   191.7 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y telnet            1.195 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y wget              1.631 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y vim               33.3 MB             
    <missing>           27 hours ago        /bin/sh -c apt-get install -y libblocksruntim   1.102 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y libglib2.0-dev    23.5 MB             
    <missing>           27 hours ago        /bin/sh -c apt-get install -y curl              1.212 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y libicu-dev        72.99 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y clang             269 MB              
    <missing>           27 hours ago        /bin/sh -c apt-get install -y libtool           5.878 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y build-essential   106.3 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y git               24.07 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y libbsd-dev        1.13 MB             
    <missing>           27 hours ago        /bin/sh -c apt-get install -y automake          47.17 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y openssh-client    7.635 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y libkqueue-dev     684.8 kB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y libcurl3          951.2 kB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y g++-4.8           37.28 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y gcc-4.8           71.44 MB            
    <missing>           27 hours ago        /bin/sh -c apt-get install -y libcurl4-gnutls   17.4 MB             
    <missing>           27 hours ago        /bin/sh -c apt-get update                       22.16 MB            
    <missing>           27 hours ago        /bin/sh -c #(nop) WORKDIR /root                 0 B                 
    <missing>           27 hours ago        /bin/sh -c #(nop) ENV WORK_DIR=/root            0 B                 
    <missing>           27 hours ago        /bin/sh -c #(nop) ENV HOME=/root                0 B                 
    <missing>           27 hours ago        /bin/sh -c #(nop) ENV UBUNTU_VERSION_NO_DOTS=   0 B                 
    <missing>           27 hours ago        /bin/sh -c #(nop) ENV UBUNTU_VERSION=ubuntu15   0 B                 
    <missing>           27 hours ago        /bin/sh -c #(nop) ENV SWIFT_SNAPSHOT=swift-DE   0 B                 
    <missing>           11 days ago         /bin/sh -c #(nop) LABEL Description=Linux Ubu   0 B                 
    <missing>           11 days ago         /bin/sh -c #(nop) MAINTAINER IBM Swift Engine   0 B                 
    <missing>           11 days ago         /bin/sh -c #(nop) CMD ["/bin/bash"]             0 B                 
    <missing>           11 days ago         /bin/sh -c sed -i 's/^#\s*\(deb.*universe\)$/   1.863 kB            
    <missing>           11 days ago         /bin/sh -c rm -rf /var/lib/apt/lists/*          0 B                 
    <missing>           11 days ago         /bin/sh -c set -xe   && echo '#!/bin/sh' > /u   701 B               
    <missing>           11 days ago         /bin/sh -c #(nop) ADD file:8b288e5603e677ba91   136.5 MB  

Here is the Docker history from swift3:

    docker history swift3
    IMAGE               CREATED              CREATED BY                                      SIZE                COMMENT
    6f080e9de9a0        About a minute ago   /bin/sh -c #(nop) ADD file:bf394b6a0d11a1d638   1.063 MB          
    ec925fb12b56        3 minutes ago        /bin/sh -c SWIFT_ARCHIVE_NAME=$SWIFT_VERSION-   673.4 MB            
    83041376a656        4 minutes ago        /bin/sh -c apt-get update &&   apt-get instal   485.5 MB            
    9483bb6897d7        24 minutes ago       /bin/sh -c #(nop) ENV SWIFT_PLATFORM=ubuntu15   0 B                 
    1f88341e2978        24 minutes ago       /bin/sh -c #(nop) ENV SWIFT_VERSION=swift-DEV   0 B                 
    e8adb3f35815        3 days ago           /bin/sh -c #(nop) CMD ["/bin/bash"]             0 B                 
    <missing>           3 days ago           /bin/sh -c sed -i 's/^#\s*\(deb.*universe\)$/   1.863 kB            
    <missing>           3 days ago           /bin/sh -c rm -rf /var/lib/apt/lists/*          0 B                 
    <missing>           3 days ago           /bin/sh -c set -xe   && echo '#!/bin/sh' > /u   701 B               
    <missing>           3 days ago           /bin/sh -c #(nop) ADD file:8daa41998006174483   136.6 MB            
