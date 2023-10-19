provider "google" {
  credentials = file("/Users/pestirai/zdemo/google-cloud-creds/credentials.json")
  project     = var.project
  region      = var.region
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}