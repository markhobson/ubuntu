#!/bin/bash

# JetBrains Toolbox

VERSION=1.17.6856

wget -O /tmp/toolbox.tar.gz https://download.jetbrains.com/toolbox/jetbrains-toolbox-$VERSION.tar.gz
tar zxvf /tmp/toolbox.tar.gz -C /tmp
rm /tmp/toolbox.tar.gz
mv /tmp/jetbrains-toolbox-$VERSION /opt
