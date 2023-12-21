#!/bin/bash

set -e

# Bitwarden CLI

wget -O /tmp/bw.zip 'https://vault.bitwarden.com/download/?app=cli&platform=linux'
unzip /tmp/bw.zip -d /tmp
mv /tmp/bw ~/bin
rm /tmp/bw.zip
