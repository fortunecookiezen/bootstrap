# Class: bootstrap
# ===========================
#
# This class bootstraps a puppet module so that it can be tied into a master
# server infrastructure as part of a vm provisioning workflow. This class is
# meant to be called using puppet apply.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'bootstrap':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <phillips.james@gmail.com>
#
# Copyright
# ---------
#
# Copyright 2016 james phillips
#
class bootstrap (
	$certname = '${::fqdn}',
	$puppetmaster = '192.168.1.1',
	$environment = 'production',
  ){

  include stdlib

  package { 'puppet-agent':
	ensure => installed,
	before => File['/etc/puppetlabs/puppet/puppet.conf'],
  }

  file { '/etc/puppetlabs/puppet/puppet.conf':
	ensure => file,
	content => template('bootstrap/puppet_conf.erb'),
  }

}
