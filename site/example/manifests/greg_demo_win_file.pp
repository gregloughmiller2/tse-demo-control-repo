class example::greg_demo_win_file {

file { 'c:\\Temp\thisisdemo.conf':
   ensure 	=> present,
   content	=> 'This is a demo configuration file '
   }

}
