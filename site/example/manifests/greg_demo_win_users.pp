class example::greg_demo_win_user {
#
user { 'demoadmin':
  name		=>	'demoadmin',
  ensure	=> 	present,
  groups	=>	['Administrators'],
  membership	=>	inclusive,
  password	=>	'secretpassword',
  }
}
