class ntp::params {
  $config_name    = ntp.conf
  $package_name   = $facts['os']['family'] ? {
    'Debian'   => ntp,
    'Default'  => ntpd,
  }
  $service_name   = ntpd
  $package_ensure = present
  $ensure_status  = running
  $enable_status  = true
  $ensure_type    = file
  $file_mode      = '0664'
  $servers        = ['0.centos.pool.ntp.org', '1.centos.pool.ntp.org', '2.centos.pool.ntp.org']
}

