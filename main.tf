resource "google_compute_instance" "webserver" {
  name         = "webserver"
  machine_type = "f1-micro"

  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
	  
    }
  }

  metadata_startup_script = file("./apache2.sh")

  scheduling {
    preemptible       = true
    automatic_restart = false
  }

  network_interface {
    network = "default"
    access_config {

    }
  }
}
