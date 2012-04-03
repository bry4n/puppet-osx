class npm {
  exec { "install-npm":
    command => "/bin/bash -l -c 'curl http://npmjs.org/install.sh | sudo sh'",
    path    => ['/bin', '/usr/bin', '/usr/local/bin'],
    require => [Package['curl'], Exec['install-nodejs']],
    unless  => "/bin/bash -l -c 'which npm'"
  }
}
