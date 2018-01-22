class example::greg_demo_win_features {

$demo_features = [ 'Web-Asp-Net45','NET-Framework-45-ASPNET','Windows Defender']

windowsfeature { $demo_features:
  ensure => present,
  }
}
