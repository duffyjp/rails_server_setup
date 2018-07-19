#!/bin/bash

echo "gem: --no-document" > /etc/gemrc


gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

\curl -sSL https://get.rvm.io | bash


adduser --disabled-password deploy 2> /dev/null
usermod -a -G rvm deploy

gem install bundler

su - deploy -c "rvm autolibs disable"

# This is broken in 18.04 I guess.
# See https://github.com/rvm/rvm/issues/4357
apt purge libssl-dev && apt install libssl1.0-dev

# Readline is broken in 18.04 too.
apt-get install -y libreadline-dev

