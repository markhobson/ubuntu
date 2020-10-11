#!/bin/bash

# ChromeDriver

VERSION=86.0.4240.22

wget -O /tmp/chromedriver.zip https://chromedriver.storage.googleapis.com/$VERSION/chromedriver_linux64.zip
unzip /tmp/chromedriver.zip -d /tmp
rm /tmp/chromedriver.zip
mkdir -p /opt/chromedriver
mv /tmp/chromedriver /opt/chromedriver
ln -sf /opt/chromedriver/chromedriver /usr/bin/chromedriver
