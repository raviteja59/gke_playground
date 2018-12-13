provider "google" {
  credentials = "${file("./creds/gke-tf-demo-224611-daefe9b7a4e6.json")}"
  project     = "gke-tf-demo"
  region      = "us-west1"
}

resource "google_container_cluster" "default" {
  name                   = "${var.cluster_name}"
  zone                   = "${var.zone}"
  network                = "${var.network}"
  initial_node_count     = "${var.cdeK8sNodeNum}"
  private_cluster        = "${var.private}"
  min_master_version     = "${var.k8sVersion}"
  node_version           = "${var.k8sVersion}"
  master_ipv4_cidr_block = "${var.master_cidr_block}"

  master_authorized_networks_config = {
    cidr_blocks = "${var.master_authorized_networks_config}"
  }

  ip_allocation_policy {}
}
