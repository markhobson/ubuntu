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

# Trust HTTPS certificate
# See: https://learn.microsoft.com/en-us/aspnet/core/security/enforcing-ssl#ubuntu-trust-the-certificate-for-service-to-service-communication
dotnet dev-certs https
sudo -E dotnet dev-certs https -ep /usr/local/share/ca-certificates/aspnet/https.crt --format PEM
sudo update-ca-certificates
