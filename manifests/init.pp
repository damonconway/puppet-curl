# == Class: curl
#
# This class manages the curl package and its development package. 
#
# === Parameters
#
# [*dev_package_name*]
#   This sets the name of the development package to install.
#
# [*ensure_pkg*]
#   This the ensure value for the curl package resource.
#
# [*ensure_dev_pkg*]
#   This the ensure value for the curl package resource.
#
# [*install_options*]
#   This sets the install_options value for all package resources.
#
# [*package_name*]
#   This sets the name value for the curl package resource.
#
# === Variables
#
# This module has no variables.
#
# === Examples
#
#  class { curl:
#    ensure_dev_pkg => 'present',
#  }
#
# === Authors
#
# Damon Conway <vstraylight@gmail.com>
#
# === Copyright
#
# Copyright 2014 Damon Conway
#
class curl (
  $dev_package_name = $curl::params::dev_package_name,
  $ensure_pkg       = 'present',
  $ensure_dev_pkg   = 'absent',
  $install_options  = undef,
  $package_name     = $curl::params::package_name
) inherits curl::params {

  include curl::install

}
