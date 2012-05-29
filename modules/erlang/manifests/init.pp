class erlang {
  package { "erlang":
    ensure    => latest,
    provider  => 'brew'
  }
}
