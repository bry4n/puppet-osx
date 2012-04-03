class passenger {
  package { "passenger":
    ensure   => latest,
    provider => 'gem'
    require  => Package['rbenv']
  }
}
