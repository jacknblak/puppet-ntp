class ntp::config (
  $config_name = $ntp::config_name,
  $ensure_type = $ntp::ensure_type,
  $file_mode   = $ntp::file_mode,
  $servers     = $ntp::servers,
) {
  file { '/etc/$config_name': 
    ensure  => $ensure_type,
    mode    => $file_mode,
    owner   => 0,
    group   => 0,
    content => template("module_name/ntp_conf.erb")
  }
}
