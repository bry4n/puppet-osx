class rails {
  package { "rails":
    ensure   => latest,
    provider => 'gem',
    require  => Package['rbenv']
  }
}
