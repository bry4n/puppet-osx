class coffee-script {
  exec { "install-coffee":
    command => "/bin/bash -l -c 'sudo npm install -g coffee-script'",
    path    => "/usr/local/bin",
    require => [Exec["install-nodejs"], Exec["install-npm"]],
    unless  => "/bin/bash -l -c 'which coffee'"
  }
}
