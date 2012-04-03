class git {
  package { "git":
    ensure   => latest,
    provider => 'brew'
  }
}
