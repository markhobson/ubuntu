#!/bin/bash

set -eo pipefail

# JetBrains Toolbox

VERSION=$(curl -s 'https://data.services.jetbrains.com/products/releases?code=TBA&latest=true' | jq -r .TBA[].build)

sudo apt-get install libfuse2

wget -O /tmp/toolbox.tar.gz https://download.jetbrains.com/toolbox/jetbrains-toolbox-$VERSION.tar.gz
tar zxvf /tmp/toolbox.tar.gz -C /tmp
rm /tmp/toolbox.tar.gz
sudo mv /tmp/jetbrains-toolbox-$VERSION /opt
