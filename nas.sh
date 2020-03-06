#!/bin/bash

# Mount NAS

NAS_IP=192.168.0.2
NAS_MOUNT=/media/nas

apt update
apt install -y nfs-common

# Set hostname

echo "$NAS_IP nas" >> /etc/hosts

# Configure devices

cat << EOF >> /etc/fstab
nas:/Public		$NAS_MOUNT/Public	nfs	defaults	0	0
nas:/Qmultimedia	$NAS_MOUNT/Multimedia	nfs	defaults	0	0
EOF

# Create mount points

mkdir -p \
	$NAS_MOUNT/Public \
	$NAS_MOUNT/Multimedia

# Mount

mount -a
