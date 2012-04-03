class nginx {
  package { "nginx":
    ensure    => latest,
    provider  => 'brew'
  }
}
