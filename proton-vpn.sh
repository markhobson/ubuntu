#!/bin/bash

set -e

# Proton VPN

wget -O /tmp/protonvpn.deb https://repo.protonvpn.com/debian/dists/stable/main/binary-all/protonvpn-stable-release_1.0.8_all.deb
sudo dpkg -i /tmp/protonvpn.deb
rm -f /tmp/protonvpn.deb

sudo apt-get update
sudo apt-get install -y proton-vpn-gnome-desktop

# Proton VPN system tray icon

sudo apt-get install -y libayatana-appindicator3-1 gir1.2-ayatanaappindicator3-0.1 gnome-shell-extension-appindicator
