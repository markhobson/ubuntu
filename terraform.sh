#!/bin/bash

# Terraform

VERSION=0.13.5

curl https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip -o /tmp/terraform.zip
unzip -f /tmp/terraform.zip -d /usr/local/bin
rm /tmp/terraform.zip
