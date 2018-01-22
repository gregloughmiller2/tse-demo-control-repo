class example::greg_demo_win_features {

$demo_features = [ 'NET-Framework-Core','Windows-Defender','Windows-Defender-GUI']

windowsfeature { $demo_features:
  ensure => present,
  }
}
