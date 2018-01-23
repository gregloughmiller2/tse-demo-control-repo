class example::greg_demo_win_dsc {
#
dsc_windowsfeature { 'IIS':
  dsc_ensure       => present,
  dsc_name  => 'Web-Server',
  }
}
