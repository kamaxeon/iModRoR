class postgresql::params {
  $locale = 'en_US.UTF-8'
  case $::operatingsystem {
    /(Ubuntu|Debian)/: {
      $version = '9.3'
      $client_package = 'postgresql-client'
      $server_package = 'postgresql'
      $listen_address = 'localhost'
      $port = 5432
    }
    default: {
      fail("Unsupported platform: ${::operatingsystem}")
    }
  }
}
