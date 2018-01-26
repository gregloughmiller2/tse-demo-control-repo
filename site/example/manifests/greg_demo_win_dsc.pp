class example::greg_demo_win_dsc {
#
#dsc_windowsfeature { 'IIS':
#  dsc_ensure       => present,
#  dsc_name  => 'Web-Server',
#  }

dsc_registry {'registry_demo':
  dsc_ensure 	=> present,
  dsc_key	=> 'HKEY_LOCAL_MACHINE\SOFTWARE\DemoKey',
  dsc_valuename	=> 'DSCPuppet',
  dsc_valuedata	=> 'This is a test with DSc Puppet Module',
  } 
}
