#!/bin/bash

# Docker Compose

VERSION=1.29.2

sudo curl -L "https://github.com/docker/compose/releases/download/$VERSION/docker-compose-$(uname -s)-$(uname -m)" \
	-o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Bash auto-completion

sudo curl -L https://raw.githubusercontent.com/docker/compose/$VERSION/contrib/completion/bash/docker-compose \
	-o /etc/bash_completion.d/docker-compose
