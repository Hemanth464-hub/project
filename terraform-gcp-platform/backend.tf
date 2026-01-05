terraform {
  backend "gcs" {
    bucket  = "clean-trees-477813-n2-tf-state"
    prefix  = "terraform/state"
  }
}
