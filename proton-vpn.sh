#!/bin/bash

set -e

# Proton VPN

wget -O /tmp/protonvpn.deb https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.3-2_all.deb
sudo dpkg -i /tmp/protonvpn.deb
rm -f /tmp/protonvpn.deb

sudo apt-get update
sudo apt-get install -y protonvpn

# Proton VPN system tray icon

sudo apt-get install -y gnome-shell-extension-appindicator gir1.2-appindicator3-0.1
