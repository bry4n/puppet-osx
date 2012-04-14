class the_silver_searcher {
  package { "the_silver_searcher":
    ensure    => latest,
    provider  => 'brew'
  }
}
