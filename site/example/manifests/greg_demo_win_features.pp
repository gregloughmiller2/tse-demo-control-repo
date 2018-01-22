class example::greg_demo_win_features {

$demo_features = [ 'NET-Framework-Core','Windows Defender']

windowsfeature { $demo_features:
  ensure => present,
  }
}
