#!/bin/bash

set -e

# Microsoft Teams
# See: https://learn.microsoft.com/en-us/microsoftteams/get-clients?tabs=Linux#install-manually-from-the-command-line

curl -s https://packages.microsoft.com/keys/microsoft.asc \
	| sudo gpg --dearmor -o /usr/share/keyrings/microsoft-archive-keyring.gpg
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/ms-teams stable main" > /etc/apt/sources.list.d/teams.list'

sudo apt-get update
sudo apt-get install teams
