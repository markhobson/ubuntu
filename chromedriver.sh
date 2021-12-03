#!/bin/bash

# ChromeDriver

VERSION=96.0.4664.45

wget -O /tmp/chromedriver.zip https://chromedriver.storage.googleapis.com/$VERSION/chromedriver_linux64.zip
unzip /tmp/chromedriver.zip -d /tmp
rm /tmp/chromedriver.zip
sudo mkdir -p /opt/chromedriver
sudo mv /tmp/chromedriver /opt/chromedriver
sudo ln -sf /opt/chromedriver/chromedriver /usr/bin/chromedriver
