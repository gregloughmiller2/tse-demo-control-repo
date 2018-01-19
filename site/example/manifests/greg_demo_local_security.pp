class example::greg_demo_local_security  {

  local_security_policy{ 'Enforce password history':
    ensure       => present,
    policy_value => '24',
  }


  local_security_policy{ 'Maximum password age':
    ensure       => present,
    policy_value => '60',
  }


  local_security_policy{ 'Minimum password age':
    ensure       => present,
    policy_value => '1',
  }


  local_security_policy{ 'Minimum password length':
    ensure       => present,
    policy_value => '14',
  }


  local_security_policy{ 'Password must meet complexity requirements':
    ensure       => present,
    policy_value => '1',
  }


  local_security_policy{ 'Store passwords using reversible encryption':
    ensure       => present,
    policy_value => '0',
  }

}
