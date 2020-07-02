provider "openstack" {
  # Username to be used while connecting to Openstack.
  user_name = "admin"

  # Tenant name to be used while connecting to Openstack.
  tenant_name = "admin"

  # Password to be used while connecting to Openstack.
  password = "ebf4a129b765461f"

  # URL where Openstack is running!
  auth_url = "http://192.168.1.3:5000/v3"

  region = "RegionOne"
}

resource "openstack_compute_flavor_v2" "Terraform_Test_Flavor" {
  # Disk space in GB
  disk = 10

  # Name of the flavor!
  name = "terraform_Test"

  # RAM in MB
  ram = 1024

  # Number of Virtual CPU has to be provided here
  vcpus = 1
}