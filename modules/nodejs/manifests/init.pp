class nodejs {
  exec { "install-nodejs":
    command => "/bin/bash -l -c 'brew install nodejs'",
    path    => "/usr/local/bin",
    unless  => "/bin/bash -l -c 'which node'"
  }
}
