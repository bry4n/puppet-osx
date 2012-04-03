class redis {
  package { "redis":
    ensure    => latest,
    provider  => 'brew'
  }
}
