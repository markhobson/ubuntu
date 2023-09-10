#!/bin/bash

set -e

# ChromeDriver

URL=$(curl -s https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json \
	| jq -r '.channels.Stable.downloads.chromedriver[] | select(.platform == "linux64").url')

wget -O /tmp/chromedriver.zip $URL
sudo unzip -o /tmp/chromedriver.zip -d /opt
rm /tmp/chromedriver.zip
sudo ln -sf /opt/chromedriver-linux64/chromedriver /usr/bin/chromedriver
