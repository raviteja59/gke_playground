provider "google" {
  credentials = "${file("./creds/gke-tf-demo-224611-daefe9b7a4e6.json")}"
  project     = "gke-tf-demo"
  region      = "us-west1"
}
