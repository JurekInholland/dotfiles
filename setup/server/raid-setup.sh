#!/bin/sh

# Setup a RAID 0 Array using mdadm
# This script has to be run as root.

# Source: https://www.digitalocean.com/community/tutorials/how-to-create-raid-arrays-with-mdadm-on-ubuntu-16-04

# To wipe hdds beforehand: 'wipefs /dev/sda'
# Delete raid: mdadm --zero-superblock /dev/sda


# Confirm identifiers of raw disks are correct
lsblk -o NAME,SIZE,FSTYPE,TYPE,MOUNTPOINT &

# Create a RAID 0 array
mdadm --create --verbose /dev/md0 --level=0 --raid-devices=2 /dev/sda /dev/sdb &

# Create a filesystem on the newly created array
mkfs.ext4 -F /dev/md0 &

# Create a mount point to attach the new fielsystem to
mkdir -p /mnt/md0 &

# Mount the new filesystem
mount /dev/md0 /mnt/md0 &

# Adjust `/etc/mdadm/mdadm.conf` to automatically reassemble the array at boot time
# by scanning the active array and appending it to the file
mdadm --detail --scan | tee -a /etc/mdadm/mdadm.conf &

# Update initramfs so the array will be available during early boot
update-initramfs -u &

# Add new filesystem options to `/etc/fstab` for auto mounting during boot
echo '/dev/md0 /mnt/md0 ext4 defaults,nofail,discard 0 0' | sudo tee -a /etc/fstab &

echo "####################"
echo "RAID SETUP COMPLETE!"
