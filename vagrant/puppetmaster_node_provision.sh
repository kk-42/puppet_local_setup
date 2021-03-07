#!/bin/bash



sudo apt-get update -y
apt-get install puppetserver -y
sed -i s/Xms2g/Xms1g/g /etc/default/puppetserver
sed -i s/Xmx2g/Xmx1g/g /etc/default/puppetserver

cat <<EOF >>/etc/puppetlabs/puppet/puppet.conf
[main]
certname = puppetmaster
server = puppetmaster
dns_alt_names = puppetmaster,puppet
EOF

systemctl start puppetserver
systemctl enable puppetserver