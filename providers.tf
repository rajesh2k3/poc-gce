provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}

terraform {
  backend "gcs" {
    bucket      = "gce-tf-labs"
    prefix      = "terraform/state"
    #credentials = "gce-sa-key.json"   #mention here the name and add service account key inside same folder
  }
}
