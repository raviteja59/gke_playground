resource "google_container_cluster" "gke-cluster" {
  name                   = "priv-test-cluster"
  network                = "default"
  zone                   = "us-west1-b"
  initial_node_count     = 3
  private_cluster        = true
  master_ipv4_cidr_block = "172.16.0.32/28"

  ip_allocation_policy {
    cluster_secondary_range_name  = "pod-range"
    services_secondary_range_name = "svc-range"
  }
}
