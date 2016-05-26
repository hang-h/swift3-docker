# Swift3 - Docker
Docker image with the Swift binaries (DEVELOPMENT-SNAPSHOT-2016-05-03-a)
and dependencies.  

This image was derived from IBM-Swift/swift-ubuntu-docker.  This is used for
development and testing of Swift applications on the Linux Ubuntu (v15.10)
operating system.

The goal of this fork is to:

1. Reduce the size of the Docker image
2. Remove non-critical dependencies
3. Move only the libdispatch binaries into the final image

# To use
Run the following in Terminal:

    ./build.sh

# Image sizes
    swift3-slim          1.296 GB
    ibmcom/swift-ubuntu  1.508 GB


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
