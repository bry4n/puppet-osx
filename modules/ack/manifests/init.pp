class ack {
  package { "ack":
    ensure    => latest,
    provider  => 'brew'
  }
}
