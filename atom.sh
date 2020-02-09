#!/bin/bash

curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | apt-key add -
sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
apt update
apt install -y atom
