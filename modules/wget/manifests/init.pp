class wget {
  package { "wget":
    ensure    => latest,
    provider  => 'brew'
  }
}
