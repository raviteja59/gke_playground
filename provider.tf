provider "google" {
  credentials = "${file("./creds/tf-gke.json")}"
  project     = "gke-tf-demo"
  region      = "us-west1"
}
