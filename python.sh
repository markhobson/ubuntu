#!/bin/bash

set -e

# Python

sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt-get update
sudo apt-get install -y python3.13

# venv

sudo apt-get install -y python3.13-venv
