#!/bin/bash

set -e

# Bruno
#
# See: https://docs.usebruno.com/bruno-basics/download

sudo mkdir -p /etc/apt/keyrings
curl -fsSL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x9FA6017ECABE0266" \
	| gpg --dearmor \
	| sudo tee /etc/apt/keyrings/bruno.gpg \
	> /dev/null
sudo chmod 644 /etc/apt/keyrings/bruno.gpg
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/bruno.gpg] http://debian.usebruno.com/ bruno stable" \
	| sudo tee /etc/apt/sources.list.d/bruno.list
 
sudo apt-get update
sudo apt-get install bruno
