class mysql {
  package { "mysql":
    ensure   => latest,
    provider => 'brew'
  }

  exec { "mysql-start-server":
    command => "/bin/bash -l -c 'mysql.server start'",
    path    => "/usr/local/bin",
    require => Package["mysql"],
    unless  => "/bin/bash -lc -c 'mysql.server status | grep SUCCESS'"
  }
}
