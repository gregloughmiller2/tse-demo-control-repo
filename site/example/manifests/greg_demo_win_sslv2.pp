class example::greg_demo_win_sslv2 {

  # CUSTOM SSL REG KEYS
  registry_key { 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server':
    ensure       => present,
    purge_values => true,
  }

  registry_key { 'Enabled':
    path       => 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server',
    ensure     => present,
    type       => dword,
    data       => '0x1',
  }

}
