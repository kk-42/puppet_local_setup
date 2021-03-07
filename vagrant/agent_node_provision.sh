#!/bin/bash

sudo hostnamectl set-hostname puppetclient
apt-get update -y
apt-get install puppet-agent -y

systemctl start puppet
systemctl enable puppet