class profile::platform::baseline::windows {
  include ::profile::platform::baseline::windows::bootstrap
#  include ::profile::platform::baseline::windows::common
  include ::profile::platform::baseline::windows::motd
  include ::profile::platform::baseline::windows::firewall
  include ::profile::platform::baseline::windows::packages
  include ::profile::platform::baseline::users::windows
# Added for security demo
  include ::profile::platform::baseline::windows::security_baseline
}