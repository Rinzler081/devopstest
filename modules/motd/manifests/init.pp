class motd {

  $hostname = $facts['networking']['fqdn']


  File { '/etc/motd':
    path   =>  '/etc/motd',
   ensure  =>  file,
   source  =>  'puppet:///modules/motd/motd',
 }
}
