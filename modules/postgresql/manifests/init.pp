class postgresql {
  package { "postgresql":
    ensure    => latest,
    provider  => 'brew'
  }
}
