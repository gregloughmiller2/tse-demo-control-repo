class example::greg_demo_win_timeserver  {

  class { 'time':
    servers  => ['pool.ntp.org','north-america.pool.ntp.org'],
  }
}
