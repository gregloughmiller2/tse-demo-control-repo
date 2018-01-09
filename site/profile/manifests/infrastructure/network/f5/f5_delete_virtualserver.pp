class profile::infrastructure::network::f5::f5_delete_virtualserver {

f5_virtualserver { '/Common/puppet_vs1':
    ensure                    => 'absent',
    provider                  => 'standard',
    default_pool              => '/Common/puppet_pool',
    destination_address       => '10.0.0.200',
    destination_mask          => '255.255.255.255',
    http_profile              => '/Common/http',
    service_port              => '80',
    protocol                  => 'tcp',
    source                    => '0.0.0.0/0',
  }
f5_pool { '/Common/puppet_pool':
    ensure                    => 'absent',
    require  =>  F5_virtualserver['/Common/puppet_vs1'],
  }
f5_node { '/Common/WWW_Server_1':
    ensure                   => 'absent',
    require  =>  F5_pool['/Common/puppet_pool'],
  }
f5_node { '/Common/WWW_Server_2':
    ensure                   => 'absent',
    require  =>  F5_node['/Common/WWW_Server_1'],
  }
}