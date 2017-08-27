class ntp::service (
  $service_name  = $ntp::service_name,
  $ensure_status = $ntp::ensure_status,
  $enable_status = $ntp::enable_status,
) {
  service { 'ntp_service': 
    ensure => $ensure_status,
    name   => $service_name,
    enable => $enable_status,
  }
}
