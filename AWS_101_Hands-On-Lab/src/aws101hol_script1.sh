#!/bin/bash

# make filesystem
sudo mkfs -t ext4 /dev/xvdf &&

# make directory which will be used for mount directory
sudo mkdir /mount_1g

# backup fstab
sudo cp /etc/fstab /etc/fstab.bk

# change fstab
echo -e '/dev/xvdf\t/mount_1g\text4\tdefaults,nofail\t0\t2' | sudo tee --append /etc/fstab > /dev/null

# print fstab
sudo cat /etc/fstab