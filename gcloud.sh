#!/bin/bash

set -e

# Google Cloud CLI
#
# See: https://cloud.google.com/sdk/docs/install#deb

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg \
	| sudo gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" \
	| sudo tee /etc/apt/sources.list.d/google-cloud-sdk.list

sudo apt-get update
sudo apt-get install -y google-cloud-cli
