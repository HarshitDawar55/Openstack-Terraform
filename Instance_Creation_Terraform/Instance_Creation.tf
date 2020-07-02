# Note: While creating any instance in Openstack, the hostname of the host system and the name
# in the hypervisor-list column of nova hypervisor-list command should match!

provider "openstack" {
  user_name = "admin"
  tenant_name = "admin"
  password = ""
  auth_url = "http://192.168.1.3:5000/v3"
  region = "RegionOne"
}