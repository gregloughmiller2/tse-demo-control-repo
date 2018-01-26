class example::greg_demo_win_dsc {
#
#dsc_windowsfeature { 'IIS':
#  dsc_ensure       => present,
#  dsc_name  => 'Web-Server',
#  }


dsc_xmppreference { 'Defender':
   dsc_scanscheduleday  => 'Everyday',
   dsc_scanparameters   => 'QuickScan',
   dsc_scanscheduletime => '600',
   dsc_disablerealtimemonitoring  => $True,
}

}
