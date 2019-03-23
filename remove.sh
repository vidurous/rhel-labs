#!/bin/bash
userdel rhel-labs
rm -fr /etc/sudoers.d/rhel-labs
rm -fr /home/rhel-labs
#chmod 0440 /etc/sudoers.d/rhel-labs
#mkdir /home/rhel-labs
#chmod 0755 /home/rhel-labs
rm -fr /usr/local/sbin/
virsh destroy server.example.com
virsh net-destroy rhel-labs
