class bash-completion {
  package { "bash-completion":
    ensure    => latest,
    provider  => 'brew'
  }
}
