class example::greg_demo_win_timeserver  {

  class { 'windowstime':
    servers  => { 'pool.ntp.org'     => '0x01',
                  'time.windows.com' => '0x01',
                },
    timezone => 'Eastern Standard Time',
  }

}
