#!/bin/sh
# add a master public key to authorized_keys on host in order to allow SSH connections
cat /var/ans/master_key.pub >> ~/.ssh/authorized_keys;

/usr/sbin/sshd -D