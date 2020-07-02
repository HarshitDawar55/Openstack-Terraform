provider "openstack" {
  # Username to be used while connecting to Openstack.
  user_name = "<User Name>"

  # Tenant name to be used while connecting to Openstack.
  tenant_name = "<Tenant Name>"

  # Password to be used while connecting to Openstack.
  password = "<Password>"

  # URL where Openstack is running!
  auth_url = "<Auth URL>"

  region = "<Region Name>"
}

resource "openstack_compute_flavor_v2" "Terraform_Test_Flavor" {
  # Disk space in GB
  disk = "<Disk Size>"

  # Name of the flavor!
  name = "<Name of the Flavor>"

  # RAM in MB
  ram = "<RAM Size>"

  # Number of Virtual CPU has to be provided here
  vcpus = "<Number of VCPU >"
}