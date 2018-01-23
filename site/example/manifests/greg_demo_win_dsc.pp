class example::greg_demo_win_dsc {
#
dsc_user { 'demouser':
  dsc_username   => 'demouser',
  dsc_description  => 'demo',
  dsc_ensure       => present,
  dsc_password	=>	{
    'user'   =>    'demouser',
    'password'    =>    'mysecretpassword12!'
  }, 
  dsc_passwordneverexpires  => false,
  dsc_passwordchangerequired  => true,
  dsc_disabled  => false,
  }

user { 'demoadmin':
  name		=>	'demoadmin',
  ensure	=> 	present,
  groups	=>	['Administrators'],
  membership	=>	inclusive,
  password	=>	'secretpassword',
  }
}
