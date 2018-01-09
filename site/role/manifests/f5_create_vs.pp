# example with f5 module from f5
class role::f5_create_vs {
  include ::profile::infrastructure::network::f5::f5_add_virtualserver
}