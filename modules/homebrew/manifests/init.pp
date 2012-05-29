define brew_install($url) {
 exec { "brew-install ${url}":
    command => "/bin/bash -l -c 'brew install ${url}'",
    timeout => 0
  }
}

