#!/usr/bin/env bash
# updating packages and installing python components required for Ansible
apt-get update
apt-get install -y python-software-properties
#if ! [ -L /var/www ]; then
#  rm -rf /var/www
#  ln -fs /vagrant /var/www
#fi
#apt-get update