# Encoding: utf-8
name 'openstack-network'
maintainer 'openstack-chef'
maintainer_email 'openstack-dev@lists.openstack.org'
license 'Apache 2.0'
description 'Installs and configures the OpenStack Network API Service and various agents and plugins'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '13.0.0'
recipe 'openstack-network::client', 'Install packages required for network client'
recipe 'openstack-network::server', 'Installs packages required for a OpenStack Network server'
recipe 'openstack-network::openvswitch', 'Installs packages required for OVS'
recipe 'openstack-network::metadata_agent', 'Installs packages required for a OpenStack Network Metadata Agent'
recipe 'openstack-network::identity_registration', 'Registers OpenStack Network endpoints and service user with Keystone'
recipe 'openstack-network::vpn_agent', 'Installs packages required for Network VPN Agent'
recipe 'openstack-network::hyperv', 'Installs packages required for OpenStack Network Hyperv drivers'

%w(ubuntu redhat centos).each do |os|
  supports os
end

depends 'openstack-common', '>= 13.0.0'
depends 'openstack-identity', '>= 13.0.0'
