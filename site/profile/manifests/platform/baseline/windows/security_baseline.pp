class profile::platform::baseline::windows::security_baseline {

  # CUSTOM APP REG KEYS
  registry_key { 'HKEY_LOCAL_MACHINE\Software\Demonstration':
    ensure       => present,
    purge_values => true,
  }

  registry_value { 'HKEY_LOCAL_MACHINE\Software\Demonstration\value1':
    type => string,
    data => 'this is a value from puppet demo',
  }

  registry_value { 'HKEY_LOCAL_MACHINE\Software\Demonstration\value2':
    type => dword,
    data => '0xFFFFFFFF',
  }
  
  local_security_policy { 'Accounts: Limit local account use of blank passwords to console logon only':
    ensure         => 'present',
    policy_setting => 'MACHINE\System\CurrentControlSet\Control\Lsa\LimitBlankPasswordUse',
    policy_type    => 'Registry Values',
    policy_value   => '4,1',
  }

}