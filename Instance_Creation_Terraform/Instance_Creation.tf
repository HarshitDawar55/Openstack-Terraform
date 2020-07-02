# Note: While creating any instance in Openstack, the hostname of the host system and the name
# in the hypervisor-list column of nova hypervisor-list command should match!

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

resource "openstack_compute_instance_v2" "First_Instance" {
  # Name of the instance to create
  name = "<Instance Name>"

  # Name of the image to use for the instance creation
  image_name = "<Image Name>"

  # Name of the flavor to use for the flavor creation
  flavor_name = "<Flavor Name>"

  network {
    name = "<Network Name>"
  }

}