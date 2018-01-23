class example::greg_demo_win_users {
#
user { 'demoadmin':
  name		=>	'demoadmin',
  ensure	=> 	present,
  groups	=>	['Administrators'],
  membership	=>	inclusive,
  password	=>	'SecretPassword12!',
  }
}
