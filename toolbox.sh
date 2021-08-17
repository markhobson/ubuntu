#!/bin/bash

# JetBrains Toolbox

VERSION=1.21.9712

wget -O /tmp/toolbox.tar.gz https://download.jetbrains.com/toolbox/jetbrains-toolbox-$VERSION.tar.gz
tar zxvf /tmp/toolbox.tar.gz -C /tmp
rm /tmp/toolbox.tar.gz
sudo mv /tmp/jetbrains-toolbox-$VERSION /opt
