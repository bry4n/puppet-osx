class mongodb {
  package { "mongodb":
    ensure    => latest,
    provider  => 'brew'
  }
}
