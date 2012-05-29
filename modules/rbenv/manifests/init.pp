class rbenv {
  
  $packages       = ["rbenv", "ruby-build"]

  package { $packages:
    ensure   => latest,
    provider => 'brew'
  }

}


define rbenv_build($version) {
 exec { "rbenv-build ${version}":
    command => "/bin/bash -l -c 'rbenv install ${version}'",
    timeout => 0,
    path    => ["home/${user}/.rbenv/shims", "/home/${user}/.rbenv/bin", "/bin", "/usr/local/bin", "/usr/bin", "/usr/sbin"],
    require => Package['ruby-build'],
    unless  => "/bin/bash -l -c 'rbenv versions | grep ${version}'"
  }
}

define rbenv_install($version) {
  
  exec { "rbenv-install ${version}":
    command => "/bin/bash -l -c 'rbenv install ${version}'",
    timeout => 0,
    path    => ["home/${user}/.rbenv/shims", "/home/${user}/.rbenv/bin", "/bin", "/usr/local/bin", "/usr/bin", "/usr/sbin"],
    require => Package['ruby-build'],
    unless  => "/bin/bash -l -c 'rbenv versions | grep ${version}'"
  }

  exec { "rbenv-rehash":
    command     => "/bin/bash -l -c 'rbenv rehash'",
    onlyif      => '[ -n "$(which rbenv)" ]',
    path        => ["home/${user}/.rbenv/shims", "/home/${user}/.rbenv/bin", "/bin", "/usr/local/bin", "/usr/bin", "/usr/sbin"],
    require     => Exec["rbenv-install ${version}"]
  }

  exec { "rbenv-default":
    command => "/bin/bash -l -c 'rbenv global ${version}'",
    onlyif  => '[ -n "$(which rbenv)" ]',
    path    => ["home/${user}/.rbenv/shims", "/home/${user}/.rbenv/bin", "/bin", "/usr/local/bin", "/usr/bin", "/usr/sbin"],
    require => Exec["rbenv-install ${version}"]
  }

}

