class svn {
  package { "svn":
    ensure    => latest,
    provider  => 'brew'
  }
}
