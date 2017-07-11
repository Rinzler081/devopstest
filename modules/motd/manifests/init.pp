class motd {

  $hostname   = $facts['networking']['fqdn']
  $os_name    = $facts['os']['name']
  $os_release = $facts['os']['release']

  File { '/etc/motd':
    path    =>  '/etc/motd',
    ensure  =>  file,
    #source  =>  'puppet:///modules/motd/motd',
    content  =>  "\n\n[Puppet] ${hostname} ${os_name} $os_release}\n\n",
 }
}
