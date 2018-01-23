class example::greg_demo_win_dsc {
#
dsc_user { 'demouser':
  dsc_username   => 'demouser',
  dsc_Description  => 'demo',
  dsc_ensure       => present,
  dsc_password     => {
    'user'  => 'demouser',
    'password' => Sensitive('demopassword')
    },
  dsc_passwordneverexpiers  => false,
  }
}
