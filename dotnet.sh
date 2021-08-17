#!/bin/bash

# .NET Core

wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O /tmp/packages-microsoft-prod.deb
sudo dpkg -i /tmp/packages-microsoft-prod.deb

sudo apt update
sudo apt install -y dotnet-sdk-5.0
