class user { 
 user { 'testuser':
  name	      => 'testuserr',
  groups      => 'wheel',
  managehome  =>  true,
  password    => '$1$UqlvaYww$hunAH10p4zCvBjtIxy6zz0',
  ensure      =>  present
} 
}
