class bundler {
  package { "bundler":
    ensure   => latest,
    provider => 'gem',
    require  => Package['rbenv']
  }
}
