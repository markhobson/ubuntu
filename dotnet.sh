#!/bin/bash

# .NET Core

wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O /tmp/packages-microsoft-prod.deb
dpkg -i /tmp/packages-microsoft-prod.deb

apt update
apt install -y dotnet-sdk-5.0
