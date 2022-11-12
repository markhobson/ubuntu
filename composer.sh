#!/bin/bash

set -e

# Composer

sudo apt-get update
sudo apt-get install -y php7.4-curl php7.4-xml

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer
