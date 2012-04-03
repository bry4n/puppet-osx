class memcached {
  package { "memcached":
    ensure    => latest,
    provider  => 'brew'
  }
}
