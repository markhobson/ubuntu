#!/bin/bash

# Mount NAS

NAS_IP=192.168.1.253
NAS_MOUNT=/media/nas

sudo apt update
sudo apt install -y nfs-common

# Set hostname

echo "$NAS_IP	nas" | sudo tee -a /etc/hosts

# Configure devices

cat << EOF | sudo tee -a /etc/fstab
nas:/Public		$NAS_MOUNT/Public	nfs	defaults	0	0
nas:/Qmultimedia	$NAS_MOUNT/Multimedia	nfs	defaults	0	0
EOF

# Create mount points

sudo mkdir -p \
	$NAS_MOUNT/Public \
	$NAS_MOUNT/Multimedia

# Mount

sudo mount -a
