class example::greg_demo_win_regkeys {

  # CUSTOM APP REG KEYS
  registry_key { 'HKEY_LOCAL_MACHINE\Software\WinDemonstration':
    ensure       => present,
    purge_values => true,
  }

  registry_value { 'HKEY_LOCAL_MACHINE\Software\WinDemonstration\value1':
    type => string,
    data => 'this is a value from puppet demo',
  }

  registry_value { 'HKEY_LOCAL_MACHINE\Software\WinDemonstration\value2':
    type => dword,
    data => '0xFFFFFFFF',
  }

}
