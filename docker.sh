#!/bin/bash

#DIST=$(lsb_release -cs)
DIST=disco
DOCKER_USER=mark

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $DIST stable"
apt update
apt install -y docker-ce

groupadd docker
usermod -aG docker $DOCKER_USER
