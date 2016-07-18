#!/bin/bash
## Author: Azher Khan
## This script is created to configure the proxy into the system
## and set the vi editor mode
#sudo su -
sudo echo "Acquire::http::Proxy \"http://www-proxy.us.oracle.com:80\";" > /etc/apt/apt.conf.d/01proxy
echo "set -o vi" >> /etc/bash.bashrc
source /etc/bash.bashrc
mkdir -p ~/.pip/
echo -e "[global]\nproxy = http://www-proxy.us.oracle.com:80" >> ~/.pip/pip.conf
sudo apt-get update
sudo apt-get install -y git nginx
echo "Hostname: `hostname` on `date`"
