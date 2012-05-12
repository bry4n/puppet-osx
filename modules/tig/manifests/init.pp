class tig {
  package { "tig":
    ensure    => latest,
    provider  => 'brew'
  }
}
