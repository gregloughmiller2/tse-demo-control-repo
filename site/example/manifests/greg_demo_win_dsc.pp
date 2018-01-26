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

  # CUSTOM SSL REG KEYS
dsc_registry { 'ssl server key':
   dsc_ensure   => 'Present',
   dsc_key   =>  'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server\',
   dsc_valuename  => 'Enabled',
   dsc_valuedata  => '1',
   dsc_valuetype  => 'Dword',
  }

}
