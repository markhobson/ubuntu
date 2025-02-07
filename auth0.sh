#!/bin/bash

set -e

# Auth0 CLI
# 
# See: https://auth0.github.io/auth0-cli/

curl -sSfL https://raw.githubusercontent.com/auth0/auth0-cli/main/install.sh | sh -s -- -b ~/bin
