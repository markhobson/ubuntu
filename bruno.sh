#!/bin/bash

set -e

# Bruno

sudo mkdir -p /etc/apt/keyrings
sudo gpg --list-keys
sudo gpg --no-default-keyring --keyring /etc/apt/keyrings/bruno.gpg --keyserver keyserver.ubuntu.com --recv-keys 9FA6017ECABE0266
echo "deb [signed-by=/etc/apt/keyrings/bruno.gpg] http://debian.usebruno.com/ bruno stable" \
	| sudo tee /etc/apt/sources.list.d/bruno.list
 
sudo apt-get update
sudo apt-get install bruno
