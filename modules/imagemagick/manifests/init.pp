class imagemagick {
  package { "imagemagick":
    ensure    => latest,
    provider  => 'brew'
  }
}
