class macvim {
  package { "macvim":
    ensure    => latest,
    provider  => 'brew'
  }
}
