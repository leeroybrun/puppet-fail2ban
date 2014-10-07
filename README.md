fail2ban
========

Samples
-------
```
include fail2ban
```
```
fail2ban::config { 'default':
  ignoreip => '127.0.0.1/8',
  bantime => '600',
  findtime => '600',
  maxretry => 3,
  destemail => 'root@localhost',
  sendername => 'Fail2Ban',
  mta => 'sendmail',
  action => 'action_',
  ssh_enabled => 'true',
  sshddos_enabled => 'false'
}
```

License
-------
MIT
