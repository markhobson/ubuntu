#!/bin/bash

set -e

# Docker & Docker Compose
#
# See: https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $(. /etc/os-release && echo "$VERSION_CODENAME") stable" \
	| sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install -y docker-ce docker-compose-plugin

# Manage Docker as a non-root user
#
# See: https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user

sudo usermod -aG docker $USER
