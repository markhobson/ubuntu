#!/bin/bash

set -e

# Geckodriver

VERSION=$(curl -s https://api.github.com/repos/mozilla/geckodriver/releases/latest | jq -r .tag_name)

wget -O /tmp/geckodriver.tar.gz https://github.com/mozilla/geckodriver/releases/download/$VERSION/geckodriver-$VERSION-linux64.tar.gz
tar xzf /tmp/geckodriver.tar.gz -C /tmp
rm /tmp/geckodriver.tar.gz
sudo mkdir -p /opt/geckodriver
sudo mv /tmp/geckodriver /opt/geckodriver
sudo ln -sf /opt/geckodriver/geckodriver /usr/bin/geckodriver
