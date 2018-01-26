class example::greg_demo_win_sslv2 {

  # CUSTOM SSL REG KEYS
  registry_key { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\Server':
    ensure       => present,
    purge_values => true,
  }

#  registry_key { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\Server\Enabled':
#    type => dword,
#    data => '0x1',
#  }

}
