class puppet {
  package { "puppet":
    ensure   => latest,
    provider => 'gem',
    require  => Package['rbenv']
  }
}
