class example::greg_demo_win_dsc {
#
dsc_xmppreference { 'Demo-Defender':
   dsc_name             => 'Demo-Defender',
   dsc_scanscheduleday  => 'Everyday',
   dsc_scanparameters   => 'QuickScan',
   dsc_scanschedulequickscantime   => '720',
   dsc_disablerealtimemonitoring  => 'True',
}

}
