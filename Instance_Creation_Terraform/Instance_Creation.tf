# Note: While creating any instance in Openstack, the hostname of the host system and the name
# in the hypervisor-list column of nova hypervisor-list command should match!

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

resource "openstack_compute_instance_v2" "First_Instance" {
  name = "Openstack_Instance_through_Terraform"
  image_name = "FedorLinux32"
  flavor_name = "m1.enough"

  network {
    name = "private"
  }

}