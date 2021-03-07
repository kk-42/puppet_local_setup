#!/bin/bash
sudo cat << EOF >>/etc/hosts
172.29.128.2 puppetmaster puppet
172.29.128.3 puppetclient
EOF

sudo apt-get update -y
wget https://apt.puppetlabs.com/puppet6-release-focal.deb

sudo dpkg -i puppet6-release-focal.deb
