#!/bin/bash

# Geckodriver

VERSION=v0.29.1

wget -O /tmp/geckodriver.tar.gz https://github.com/mozilla/geckodriver/releases/download/$VERSION/geckodriver-$VERSION-linux64.tar.gz
tar xzf /tmp/geckodriver.tar.gz -C /tmp
rm /tmp/geckodriver.tar.gz
mkdir -p /opt/geckodriver
mv /tmp/geckodriver /opt/geckodriver
ln -sf /opt/geckodriver/geckodriver /usr/bin/geckodriver
