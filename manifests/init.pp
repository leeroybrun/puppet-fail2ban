class tripwire (
  $ensure = 'latest'
){

  package { 'fail2ban': ensure => $ensure }

}
