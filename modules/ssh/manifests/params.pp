class ssh::params {
  #case $facts['os']['family'] {
  
 $permit_root_login = false
 $port = 22
   case $::osfamily { 
   'Debian': {
      $package_name = 'openssh-server'
      $service_name = 'ssh'
  }
    'Redhat': {
      $package_name = 'openssh-server'
      $service_name = 'sshd'
  }
    default: {
    fail ("${facts['operatingsystem']} is not supported!")
  }
 }
}
