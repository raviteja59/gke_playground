/*variable "project" {
  default = "compute-engine-overviw"
}*/
variable "cluster_name" {
  default = "gke"
}

variable "workspace" {
  default = "sandbox"
}

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-a"
}

variable "network" {
  default = "default"
}

variable "cdeK8sNodeNum" {
  default = "3"
}

variable "k8sVersion" {
  default = "1.11.5-gke.5"
}

variable "node_version" {
  default = "1.11.3-gke.18"
}

variable "private" {
  default = "true"
}

variable "master_cidr_block" {
  default = "172.16.0.32/28"
}

variable "master_authorized_networks_config" {
  # ref https://cloud.google.com/kubernetes-engine/docs/how-to/authorized-networks?hl=en
  type        = "list"
  description = "Authorized Networks for Master Access(kubectl access). Notice describing cidr block format"

  default = [
    {
      cidr_block = "73.252.130.75/32"

      display_name = "ravi"
    },
  ]
}
