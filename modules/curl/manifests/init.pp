class curl {
  package { "curl":
    ensure    => latest,
    provider  => 'brew'
  }
}
