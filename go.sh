#!/bin/bash

set -e

# Go

VERSION=1.17.1

wget -O /tmp/go.tar.gz https://golang.org/dl/go$VERSION.linux-amd64.tar.gz
tar -C /tmp -xzf /tmp/go.tar.gz
rm /tmp/go.tar.gz
sudo mv /tmp/go /usr/local/go-$VERSION

sudo update-alternatives \
	--install /usr/bin/go go /usr/local/go-$VERSION/bin/go 0 \
	--slave /usr/bin/gofmt gofmt /usr/local/go-$VERSION/bin/gofmt
