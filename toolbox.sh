#!/bin/bash

# JetBrains Toolbox

VERSION=1.24.11947

sudo apt-get install libfuse2

wget -O /tmp/toolbox.tar.gz https://download.jetbrains.com/toolbox/jetbrains-toolbox-$VERSION.tar.gz
tar zxvf /tmp/toolbox.tar.gz -C /tmp
rm /tmp/toolbox.tar.gz
sudo mv /tmp/jetbrains-toolbox-$VERSION /opt
