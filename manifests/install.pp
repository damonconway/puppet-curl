#
class curl::install () {

  package { 'curl':
    ensure          => $curl::ensure_pkg,
    install_options => $curl::install_options,
    name            => $curl::package_name
  }

  package { 'curl-devel':
    ensure          => $curl::ensure_dev_pkg,
    install_options => $curl::install_options,
    name            => $curl::dev_package_name
  }

}
