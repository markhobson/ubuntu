#!/bin/bash

set -e

# .NET

wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O /tmp/packages-microsoft-prod.deb
sudo dpkg -i /tmp/packages-microsoft-prod.deb
rm /tmp/packages-microsoft-prod.deb

# Install from Microsoft instead of Ubuntu
# See: https://github.com/dotnet/core/issues/7699
cat << EOF | sudo tee /etc/apt/preferences.d/microsoft-dotnet
Package: *
Pin: origin "packages.microsoft.com"
Pin-Priority: 1001
EOF

sudo apt-get update
sudo apt-get install -y dotnet-sdk-6.0
