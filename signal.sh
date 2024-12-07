#!/bin/bash

set -e

# Signal
#
# See: https://signal.org/download/

wget -qO- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > /tmp/signal-desktop-keyring.gpg
cat /tmp/signal-desktop-keyring.gpg | sudo tee /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null
rm /tmp/signal-desktop-keyring.gpg

echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' \
	| sudo tee /etc/apt/sources.list.d/signal-xenial.list

sudo apt-get update
sudo apt-get install -y signal-desktop
