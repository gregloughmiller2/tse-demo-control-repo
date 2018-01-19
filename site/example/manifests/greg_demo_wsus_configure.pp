class example::greg_demo_wsus_configure {

class { '::wsusserver':
    package_ensure                     => 'present',
    include_management_console         => true,
    service_manage                     => true,
    service_ensure                     => 'running',
    service_enable                     => true
    wsus_directory                     => 'C:\\WSUS',
    join_improvement_program           => false,
    sync_from_microsoft_update         => true,
    update_languages                   => ['en'],
    products                           => [
      'Active Directory Rights Management Services Client 2.0',
      'ASP.NET Web Frameworks',
      'Microsoft SQL Server 2012',
      'SQL Server Feature Pack',
      'SQL Server 2012 Product Updates for Setup',
      'Windows Server 2016',
      'Windows Defender',
    ],
    update_classifications             => [
        'Windows Server 2012
        'Windows Server 2016',
    ],
    targeting_mode                     => 'Client',
    host_binaries_on_microsoft_update  => false,
    synchronize_automatically          => true,
    synchronize_time_of_day            => '03:00:00', # 3AM ( UTC ) 24H Clock
    number_of_synchronizations_per_day => 1,
    }
}