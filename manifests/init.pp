class fail2ban (
  $ensure = 'latest'
){

  package { 'fail2ban': ensure => $ensure }

}
