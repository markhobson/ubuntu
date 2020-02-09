#!/bin/bash

VERSION=80.0.3987.16

wget -O /tmp/chromedriver.zip https://chromedriver.storage.googleapis.com/$VERSION/chromedriver_linux64.zip
unzip /tmp/chromedriver.zip -d /tmp
rm /tmp/chromedriver.zip
mkdir /opt/chromedriver
mv /tmp/chromedriver /opt/chromedriver
ln -s /opt/chromedriver/chromedriver /usr/bin/chromedriver
