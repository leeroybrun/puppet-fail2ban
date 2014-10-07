define fail2ban::config (
  $ignoreip = '127.0.0.1/8',
  $bantime = '600',
  $findtime = '600',
  $maxretry = 3,
  $destemail = 'root@localhost',
  $sendername = 'Fail2Ban',
  $mta = 'sendmail',
  $action = 'action_',

  $ssh_enabled = 'true',
  $sshddos_enabled = 'false'
) {

  file { '/etc/fail2ban/jail.local':
    owner   => 'root',
    group   => 'root',
    mode    => '0440',
    content => template('fail2ban/jail.local'),
    require => Package['fail2ban'],
  }

}
