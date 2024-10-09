provider "google" {
    region = "us-central"
    project= "gcp-devops-415915"

}


terraform {
  backend "gcs" {
    bucket = "terraform-bucket-ro"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
    source = "hashicorp/google"
    version = "~> 4.0"
    }
  }
}