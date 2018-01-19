class example::greg_demo_win_timeserver  {

  include ::windowstime

  class { 'windowstime':
    servers  => { 'pool.ntp.org'     => '0x01',
                  'time.windows.com' => '0x01',
                  'time.nist.gov'    => '0x02',
                },
    timezone => 'Eastern Standard Time',
  }

}
