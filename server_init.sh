#!/bin/bash

wget http://apt.puppetlabs.com/puppetlabs-release-quantal.deb
dpkg -i puppetlabs-release-quantal.deb
apt-get update
apt-get install puppet git-core
cd /etc/puppet/modules
git clone git://github.com/example42/puppet-vim.git vim
git clone git://github.com/example42/puppet-nginx.git nginx
git clone git://github.com/puppetlabs/puppetlabs-stdlib.git stdlib
git clone git://github.com/josephmc5/puppet-dropbox.git dropbox
git clone git://github.com/plathrop/puppet-module-supervisor.git supervisor

cat > /etc/puppet/manifests/site.pp << EOF
node default {
	class { 'vim' }
	class { 'dropbox' }
}
EOF

puppet apply /etc/puppet/manifests/site.pp
