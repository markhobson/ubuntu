#!/bin/bash

set -e

# SQL Server

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -
sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/20.04/mssql-server-2019.list)"

sudo apt-get update
sudo apt-get install -y mssql-server

sudo /opt/mssql/bin/mssql-conf setup
