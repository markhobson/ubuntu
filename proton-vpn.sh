#!/bin/bash

set -e

# Proton VPN

wget -O /tmp/protonvpn.deb https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3_all.deb
sudo dpkg -i /tmp/protonvpn.deb
rm -f /tmp/protonvpn.deb

sudo apt-get update
sudo apt-get install -y protonvpn
