#!/bin/bash

virsh net-destroy server.example.com
virsh net-destroy rhel-labs

useradd -G qemu rhel-labs && echo "rhel-labs:redhat" | chpasswd rhel-labs && echo "rhel-labs ALL=(ALL) NOPASSWD: /usr/bin/systemctl restart libvirtd, /usr/bin/systemctl status libvirtd, /usr/bin/systemctl stop libvirtd, /usr/bin/systemctl start libvirtd, /usr/bin/virsh, /usr/bin/virt-install, /usr/bin/virt-manager, /etc/sudoers.d/rhel-labs, /usr/bin/virt-viewer server.example.com, /usr/bin/chown" | tee -a /etc/sudoers.d/rhel-labs && chmod 0440 /etc/sudoers.d/rhel-labs &&  chmod +x /home/rhel-labs/ && echo "/usr/local/sbin/rhel-labs" | tee -a /home/rhel-labs/.bashrc ; echo "DISPLAY='IP:0.0'" | tee -a /home/rhel-labs/.bashrc; echo "xhost +localhost" | tee -a /home/rhel-labs/.bashrc; mkdir -p /usr/local/sbin/ ; rsync -ruv * /usr/local/sbin/ && chown rhel-labs:rhel-labs /usr/local/sbin/ && chmod 0755 /usr/local/sbin/ && chmod +x /usr/local/sbin/
