#!/bin/bash

set -e

# SSH key

ssh-keygen -t rsa -b 4096 -N '' -f ~/.ssh/id_rsa
