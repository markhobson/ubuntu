#!/bin/bash

# Terraform

VERSION=0.14.5

curl https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip -o /tmp/terraform.zip
unzip -o /tmp/terraform.zip -d /usr/local/bin
rm /tmp/terraform.zip
