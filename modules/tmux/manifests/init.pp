class tmux {
  package { "tmux":
    ensure    => latest,
    provider  => 'brew'
  }
}
