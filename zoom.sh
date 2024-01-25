#!/bin/bash

set -e

# Zoom

wget -O /tmp/zoom.deb https://zoom.us/client/latest/zoom_amd64.deb
sudo apt-get install -y /tmp/zoom.deb
rm /tmp/zoom.deb
