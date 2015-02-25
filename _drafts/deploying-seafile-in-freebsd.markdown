---
layout: post
title: Deploying Seafile in FreeBSD
tags:
- FreeBSD
- seafile
- tutorial
- server
---
## Applicability ##
This guide is written with the assumption that you have already followed
[this guide](http://manual.seafile.com/deploy/using_sqlite.html) up to "Running Seafile
Server." I used FreeBSD 10.1-RELEASE on an i386 computer with Seafile 4.0.1. 

## Getting binary compatibility with Linux ##
In order to run the Linux binaries included with Seafile, you'll need to install and configure
Linux binary compatibility. The first step is to load the Linux kernel module:

    kldload linux

Next you'll need to install a basic set of Linux libraries and binaries:

    cd /usr/ports/emulators/linux_base-c6
    make install distclean

The default version of the kernel is 2.6.16, which is too low for the Seafile binaries. You'll
have to change it by running:

    sysctl compat.linux.osrelease=2.6.18

and then adding the line <code>compat.linux.osrelease=2.6.18</code> to <code>/etc/sysctl.conf</code> .

The next step is to mount a virtual linux /proc filesystem. This is done by first adding the
following line to <code>/etc/fstab</code>

    linproc /compat/linux/proc linprocfs rw 0 0

and then running the following command:

    mount linproc


