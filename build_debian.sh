#!/bin/bash
set -x
MYIP=10.0.7.7.55

aptitude install tinc git


git clone https://github.com/makefu/shack-retiolum.git

cd shack-retiolum

./install.sh `hostname` $MYIP

# for autostart
echo "retiolum" >> /etc/tinc/nets.boot
echo "EXTRA=\"--user=tincd --chroot\"" >> /etc/default/tinc
