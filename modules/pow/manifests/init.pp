class pow {
  package { "pow":
    ensure   => "latest",
    provider => 'brew',
    require  => Exec['install-nodejs']
  }
}
