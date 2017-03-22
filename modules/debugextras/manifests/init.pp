class debugextras (
  $path = "/vagrant/extensions/debugextras"
) {
  if ! ( File['/vagrant/content'] ) {
    file { "/vagrant/content":
      ensure => "directory",
    }
  }
  if ! ( File['/vagrant/content/plugins'] ) {
    file { "/vagrant/content/plugins":
      ensure => "directory",
    }
  }
  wp::plugin { 'developer':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => Class['wp'],
  }
  wp::plugin { 'user-switching':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => [ Class['wp'], Wp::Plugin['developer'] ],
  }
  wp::plugin { 'theme-check':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => [ Class['wp'], Wp::Plugin['developer'] ],
  }
  wp::plugin { 'regenerate-thumbnails':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => [ Class['wp'], Wp::Plugin['developer'] ],
  }
  wp::plugin { 'debug-bar-console':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => [ Class['wp'], Wp::Plugin['debug-bar'] ],
  }
  wp::plugin { 'debug-bar-shortcodes':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => [ Class['wp'], Wp::Plugin['debug-bar'] ],
  }
  wp::plugin { 'debug-bar-taxonomies':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => [ Class['wp'], Wp::Plugin['debug-bar'] ],
  }
  wp::plugin { 'debug-bar-constants':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => [ Class['wp'], Wp::Plugin['debug-bar'] ],
  }
  wp::plugin { 'debug-bar-plugin-activation':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => [ Class['wp'], Wp::Plugin['debug-bar'] ],
  }
  wp::plugin { 'debug-bar-localization':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => [ Class['wp'], Wp::Plugin['debug-bar'] ],
  }
  wp::plugin { 'debug-bar-post-types':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => [ Class['wp'], Wp::Plugin['debug-bar'] ],
  }
  wp::plugin { 'debug-bar-cache-lookup':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => [ Class['wp'], Wp::Plugin['debug-bar'] ],
  }
  wp::plugin { 'customizer-dev-tools':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => Class['wp'],
  }
  wp::plugin { 'media-placeholders':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => Class['wp'],
  }
  wp::plugin { 'php-compatibility-checker':
    ensure   => enabled,
    location => '/vagrant/wp',
    require  => Class['wp'],
  }
}
