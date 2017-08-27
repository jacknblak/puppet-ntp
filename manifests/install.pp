class ntp::install (
  $package_name  = $ntp::package_name,
  $enable_status = $ntp::enable_status,
  $ensure_status = $ntp::ensure_status,
) {
  package { 'ntp_install': 
    name   => $package_name,
    ensure => $ensure_status,
    enable => $enable_status,
  }
}
