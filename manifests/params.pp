#
class curl::params () {

  case $::osfamily {
    'RedHat': {
      $package_name = 'curl'
      $dev_package_name = $::lsbmajdistrelease ? {
        '5'     => 'curl-devel',
        default => 'libcurl-devel',
      }
    }

    'Debian': {
      $dev_package_name = 'libcurl-dev'
      $package_name     = 'curl'
    }

    default: {
      fail("Unsupported osfamily: ${::osfamily}")
    }
  }

}
