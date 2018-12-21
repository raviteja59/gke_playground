provider "google" {
  credentials = "${file("./creds/serviceaccount.json")}"
  project     = "p8psynergyx"
}

module "privgkecluster" {
  source = "./modules/privategke"
}
