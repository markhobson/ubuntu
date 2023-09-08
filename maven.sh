#!/bin/bash

set -e

# Maven

MIRROR=https://dlcdn.apache.org/
VERSION=3.9.4

wget -O /tmp/maven.tar.gz $MIRROR/maven/maven-3/$VERSION/binaries/apache-maven-$VERSION-bin.tar.gz
tar zxvf /tmp/maven.tar.gz -C /tmp
rm /tmp/maven.tar.gz
sudo mv /tmp/apache-maven-$VERSION /usr/local/

sudo update-alternatives \
	--install /usr/bin/mvn mvn /usr/local/apache-maven-$VERSION/bin/mvn 0 \
	--slave /usr/bin/mvnDebug mvnDebug /usr/local/apache-maven-$VERSION/bin/mvnDebug

# Bash auto-completion

sudo wget https://raw.githubusercontent.com/juven/maven-bash-completion/master/bash_completion.bash \
	--output-document /etc/bash_completion.d/mvn
