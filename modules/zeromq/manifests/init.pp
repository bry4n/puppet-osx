class zeromq {
  package { "zeromq":
    ensure    => latest,
    provider  => 'brew'
  }
}
