region = "us-central1"

prefix = "a" # must be [a-z]

##################
# General

terraform_user = "terraform"
terraform_ssh_key_pub = <<EndOfMessage
terraform:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQClIqY2ukU+vVw+ZYMcbRFtmgbpXFL9TV0yr8F7mBnBN/bevqOWpsdn6ePqU0yC9uIcU1sYfRuwPYqgvtnGSfj8WteysOblUuwsU1CGq4s5cunmvFM2dvNMZJILpw/k843Z4uC24pIbVJE7G1FoRrnj9/CN9GhdwaJxN42F8cfOHw==
EndOfMessage

##################
# Networking

network = "network"

##################
# Cluster

gke_preemptible = true
gke_name = "gke-cluster"
gke_tags = [
  "gke",
  "all"]
gke_region = "us-central1"
gke_zones = [
  "us-central1-a",
  "us-central1-b",
  "us-central1-c",
  "us-central1-f"
]
gke_network_cidr = "10.0.10.0/24"
gke_machine_type = "n1-standard-2"
gke_min_master_version = "1.16.13-gke.1"
gke_init_nodes = 1

##################
# Cluster Pool A

gke_a_pool_name = "gke-pool"
gke_a_pool_tags = [
  "gke",
  "all"]
gke_a_pool_region = "us-central1"
gke_a_pool_zones = [
  "us-central1-a",
  "us-central1-b",
  "us-central1-c",
  "us-central1-f"
]
gke_a_pool_machine_type = "n1-standard-2"
gke_a_pool_network_cidr = "10.0.11.0/24"
gke_a_pool_init_nodes = 1
gke_a_pool_min_nodes = 1
gke_a_pool_max_nodes = 3

##################
# Bastion

bastion_name = "bastion"
bastion_tags = [
  "bastion"]
bastion_region = "us-central1"
bastion_zone = "us-central1-a"
bastion_machine_type = "n1-standard-1"
bastion_image = "ubuntu-os-cloud/ubuntu-1804-lts"
bastion_network_cidr = "10.0.1.0/24"