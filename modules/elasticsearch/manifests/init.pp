class elasticsearch {
  package { "elasticsearch":
    ensure    => latest,
    provider  => 'brew'
  }
}
