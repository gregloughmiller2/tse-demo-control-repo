class example::greg_demo_win_reboot {

  file { 'c:\reboot.txt':
    content	=> 'Test Reboot module',
  }
  
  reboot { 'test the reboot':
    subscribe	=> File['c:\reboot.txt'],
  }


}
