class bash {
  package { "bash":
    ensure    => latest,
    provider  => 'brew'
  }
}
