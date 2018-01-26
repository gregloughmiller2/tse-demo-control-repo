class example::greg_demo_win_dsc {
#
#dsc_windowsfeature { 'IIS':
#  dsc_ensure       => present,
#  dsc_name  => 'Web-Server',
#  }


dsc_xmppreference { 'Demo-Defender':
 ,  dsc_name             => 'Demo-Defender'
   dsc_scanscheduleday  => 'Everyday',
   dsc_scanparameters   => 'QuickScan',
   dsc_scanscheduletime => '660',
   dsc_disablerealtimemonitoring  => 'True',
}

}
