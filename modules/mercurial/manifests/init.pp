class mercurial {
  package { "mercurial":
    ensure    => latest,
    provider  => 'brew'
  }
}
