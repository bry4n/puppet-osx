class akka {
  package { "akka":
    ensure    => latest,
    provider  => 'brew'
  }
}
