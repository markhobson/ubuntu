#!/bin/bash

set -e

# Chrome

wget -O /tmp/chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i /tmp/chrome.deb
rm /tmp/chrome.deb
