#!/bin/bash

set -e

# Ruby

sudo apt-get update
sudo apt-get install -y ruby-full

# Bundler

gem install bundler
