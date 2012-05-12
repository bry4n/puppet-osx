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

  # Databases / NoSQL
  #include redis
  #include mongodb
  #include postgresql
  #include memcached
  include mysql
  include sqlite

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

  rbenv_install { $ruby_version:
    version => $ruby_version
  }
  
  # RubyGems
  include bundler
  include rails
  include puppet
  # include passenger
}
