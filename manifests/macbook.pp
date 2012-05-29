node default {
  
  $ruby_version = "1.9.3-p194"
  
  # Essentials
  include bash
  include bash-completion
  include wget
  include curl
  include ack
  include the_silver_searcher
  include svn
  include git
  include mercurial
  include tmux
  #brew_install { "wemux": version => "https://github.com/downloads/zolrath/wemux/wemux.rb" }

  # Databases / NoSQL
  include redis
  include postgresql
  include memcached
  include mysql
  include sqlite
  include elasticsearch
  include zeromq

  # Dev tools
  include imagemagick
  include macvim
  include ack
  include tig

  # Node.js
  include nodejs
  include npm
  include pow
  include coffee-script

  # Ruby
  include rbenv

  rbenv_build { "ree-1.8.7-2012.02": version => "ree-1.8.7-2012.02" }
  rbenv_build { "jruby-1.6.7.2": version     => "jruby-1.6.7.2" }
  rbenv_build { "rbx-1.2.4": version => "rbx-1.2.4" }

  rbenv_install { $ruby_version:
    version => $ruby_version
  }
  
  # RubyGems
  include bundler
  include rails
  include puppet

  # Erlang
  include erlang
  #brew_install { "elixir": version => "https://github.com/rafaelfranca/homebrew/blob/d32b88019a7406f5d92789a144591e1e9cff20f3/Library/Formula/elixir.rb" }
  
}
