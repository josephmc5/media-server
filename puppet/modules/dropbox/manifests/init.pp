class dropbox {
  include stdlib
  include dropbox::config

  anchor { 'dropbox::begin': }
  -> class { 'dropbox::package': }
  ~> class { 'dropbox::service': }
  -> anchor { 'dropbox::end': }
}
