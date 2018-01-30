class example::greg_demo_wsus_client {

class { '::wsus_client':
    server_url                     => 'http://10.2.1.22:8530',
    auto_update_option             => 'AutoInstall',
    detection_frequency_hours      => '1',
    enable_status_server           => true,
    }
}
