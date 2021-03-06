#!/bin/bash

# Maven

MIRROR=http://mirror.novg.net
VERSION=3.8.1

wget -O /tmp/maven.tar.gz $MIRROR/apache/maven/maven-3/$VERSION/binaries/apache-maven-$VERSION-bin.tar.gz
tar zxvf /tmp/maven.tar.gz -C /tmp
rm /tmp/maven.tar.gz
mv /tmp/apache-maven-$VERSION /usr/local/

update-alternatives \
	--install /usr/bin/mvn mvn /usr/local/apache-maven-$VERSION/bin/mvn 0 \
	--slave /usr/bin/mvnDebug mvnDebug /usr/local/apache-maven-$VERSION/bin/mvnDebug

# Bash auto-completion

wget https://raw.github.com/dimaj/maven-bash-completion/master/bash_completion.bash \
	--output-document /etc/bash_completion.d/mvn
