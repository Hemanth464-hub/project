resource "google_compute_instance" "vm" {
  name         = "app-vm"
  machine_type = "e2-micro"
  zone         = "${var.region}-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork
  }

  service_account {
    email  = var.service_account
    scopes = ["cloud-platform"]
  }
}
