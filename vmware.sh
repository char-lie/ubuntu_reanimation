#!/bin/bash
# C/C++
apt-get install linux-headers-$(uname -r) libglib2.0-0
apt-get install build-essential qtcreator
# SHARED FOLDERS
mount /dev/cdrom /mnt && \
	tar xvzf /mnt/VMwareTools-*.tar.gz -C /tmp && \
	sudo perl /tmp/vmware-tools-distrib/vmware-install.pl -d
vmware-hgfsclient && vmware-config-tools.pl -d
