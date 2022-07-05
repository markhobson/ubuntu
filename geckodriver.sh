#!/bin/bash

# Geckodriver

VERSION=v0.31.0

wget -O /tmp/geckodriver.tar.gz https://github.com/mozilla/geckodriver/releases/download/$VERSION/geckodriver-$VERSION-linux64.tar.gz
tar xzf /tmp/geckodriver.tar.gz -C /tmp
rm /tmp/geckodriver.tar.gz
sudo mkdir -p /opt/geckodriver
sudo mv /tmp/geckodriver /opt/geckodriver
sudo ln -sf /opt/geckodriver/geckodriver /usr/bin/geckodriver
