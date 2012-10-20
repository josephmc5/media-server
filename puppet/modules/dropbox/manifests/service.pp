class dropbox::service {
  service { 'dropbox':
    ensure  => 'running',
    enable => 'true',
  }
}
