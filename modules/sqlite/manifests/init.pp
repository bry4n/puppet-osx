class sqlite {
  package { "sqlite":
    ensure    => latest,
    provider  => 'brew'
  }
}
