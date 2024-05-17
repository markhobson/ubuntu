#!/bin/bash

set -e

# Firefox
#
# See: https://support.mozilla.org/en-US/kb/install-firefox-linux#w_install-firefox-deb-package-for-debian-based-distributions

wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- \
	| sudo tee /etc/apt/keyrings/packages.mozilla.org.asc \
	> /dev/null

echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" \
	| sudo tee -a /etc/apt/sources.list.d/mozilla.list \
	> /dev/null

cat << EOF | sudo tee /etc/apt/preferences.d/mozilla
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
EOF

sudo apt-get update
sudo apt-get install firefox
