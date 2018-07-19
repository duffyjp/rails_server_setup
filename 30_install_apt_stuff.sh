#!/bin/bash

apt-get update
apt-get upgrade
apt-get dist-upgrade
apt-get autoremove

apt-get install -y build-essential
apt-get install -y imagemagick
apt-get install -y optipng
apt-get install -y jpegoptim
apt-get install -y libjpeg-dev
apt-get install -y libsqlite3-dev
apt-get install -y memcached
apt-get install -y zlib1g-dev
apt-get install -y ruby-dev
apt-get install -y libpng-dev

